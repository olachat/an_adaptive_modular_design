part of imanager;

abstract base class IConfigModule extends IModule with BaseModule<IConfigModule> {

  IConfigModule():super(token: _token);

  /// basic module check --- start 
  static final Object _token = Object();

  static IModule? _instance;


  static IModule? get instance => _instance;


  static set instance(IModule? instance) {
    if (instance == null) {
      return;
    }
    if (_instance != null) {
      throw Exception("_instance has been registered");
    }
    IModule.verify(instance, _token);
    _instance = instance;
  }
  /// basic module check --- end

  /// interface 
  String getMainDomain();
  // 本地服务器地址
  String getLocalDomain();

  String getTrackerAppId();
  

}