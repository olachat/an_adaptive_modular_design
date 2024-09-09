part of imanager;

abstract base class ILogModule extends IModule with BaseModule<ILogModule> {
  
  ILogModule():super(token: _token);

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
  void d(dynamic msg, {String? tag, int wrapWidth = -1, bool prettyJson = false});
  void w(dynamic msg, {String? tag, int wrapWidth = -1, bool prettyJson = false});
  void i(dynamic msg, {String? tag});
  void v(dynamic msg, {String? tag});
  void e(dynamic msg,
      {StackTrace? stackTrace, String? tag, int wrapWidth = -1, bool upload = true, FlutterErrorDetails? details});
}