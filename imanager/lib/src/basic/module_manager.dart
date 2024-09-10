part of imanager;

///
/// maintain the lifecycle of all modules
/// maintain the communication between modules
///
class ModuleManager implements IEvent {
  static final ModuleManager _instance = ModuleManager._internal();
  static ModuleManager get instance => _instance;

  final Map<EventName, ObserverList<EventCallback>> _listener = {};

  final Map<int, IModule> moduleList = {};

  ModuleManager._internal();

  void registerModule(IModule module) {
    moduleList[module.hashCode] = module;
  }

  void init() async {
    // init high priority modules --- for environment / config / sdk / etc
    final highPriorityModules = moduleList.values
        .where((IModule module) => module.getInitPriorityTier() == Priority.high)
        .toList()
      ..sort((IModule a, IModule b) => b.getPriorityNumber().compareTo(a.getPriorityNumber()));

    for (var module in highPriorityModules) {
      /// high priority modules will await for init
      await module.init(this);
    }

    // init medium priority modules --- for business logic
    moduleList.values
        .where((IModule module) => module.getInitPriorityTier() == Priority.medium)
        .forEach((IModule module) {
      module.init(this);
    });
    // init low priority modules --- for others
    moduleList.values.where((IModule module) => module.getInitPriorityTier() == Priority.low).forEach((IModule module) {
      module.init(this);
    });
    // init none priority modules
    moduleList.values
        .where((IModule module) => module.getInitPriorityTier() == Priority.none)
        .forEach((IModule module) {
      module.init(this);
    });
  }

  @override
  void addListener(EventName type, EventCallback listener) {
    if (!_listener.containsKey(type)) {
      _listener[type] = ObserverList();
    }
    if (!_listener[type]!.contains(listener)) {
      _listener[type]!.add(listener);
    }
  }

  @override
  void emit(EventName type, [dynamic data]) {
    if (_listener.containsKey(type)) {
      final ObserverList observer = _listener[type]!;
      for (EventCallback obs in observer) {
        obs.onEvent(type, data);
      }
    }
  }

  @override
  ObserverList<EventCallback>? getCallbacks(EventName type) {
    if (_listener.containsKey(type)) {
      return _listener[type]!;
    }
    return null;
  }

  @override
  void removeListener(EventName type, EventCallback? listener) {
    if (_listener.containsKey(type)) {
      final ObserverList observer = _listener[type]!;
      if (null == listener) {
        observer.clear();
        _listener.remove(type);
        return;
      }
      if (observer.contains(listener)) {
        observer.remove(listener);
        if (observer.isEmpty) {
          _listener.remove(type);
        }
      }
    }
  }
}
