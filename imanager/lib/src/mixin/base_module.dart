part of imanager;

mixin BaseModule<T extends IModule> on IModule{
  // common methods for all modules

  EventName createCustomEventName(String name) {
    return EventName.fromJson(name);
  }

  @override
  Priority getInitPriorityTier() {
    return Priority.low;
  }

  @override
  int getPriorityNumber() {
    return 0;
  }
}