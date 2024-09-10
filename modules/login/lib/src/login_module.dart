import 'package:flutter/src/widgets/framework.dart';
import 'package:imanager/imanager.dart';
import 'package:imanager/src/proto/generated/event_cmd.pb.dart';
import 'package:login/src/login_page.dart';
import 'package:login/src/model/login_data.dart';
import 'package:login/src/register_page.dart';

final class LoginModule extends ILoginModule {

  @override
  void registerWith() {
    ILoginModule.instance = this;
    ModuleManager.instance.registerModule(this);
    ModuleManager.instance.addListener(Inited, this);
  }

  @override
  String getModuleName() {
    return 'login';
  }

  @override
  String getPackageName() {
    return 'example';
  }

  @override
  Future<void> init(ModuleManager moduleManager) {
    return Future.value();
  }

  @override
  bool isInitialized() {
    return true;
  }
  
  @override
  Widget getLoginPage() {
    return const LoginPage(title: "Login Page");
  }

  @override
  void onEvent(EventName type, dynamic data) {
    
  }
  
  @override
  bool isFinishedRegister() {
    return LoginData.isFinishedRegistered;
  }
  
  @override
  bool isLogin() {
    return LoginData.isLogined;
  }
  
  @override
  Widget getRegisterPage() {
    return const RegisterPage(title: "Register Page");
  }


}