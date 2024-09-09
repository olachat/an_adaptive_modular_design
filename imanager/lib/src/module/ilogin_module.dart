
part of imanager;

abstract base class ILoginModule extends IModule with BaseModule<ILoginModule> {
  ILoginModule():super(token: _token);

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

  Widget getLoginPage();

  Widget getRegisterPage();

  /// check if user Login
  bool isLogin();
  /// check if user finished Register
  bool isFinishedRegister();

}