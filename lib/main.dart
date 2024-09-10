import 'dart:async';

import 'package:flutter/material.dart';
import 'package:home_page/home_page.dart';
import 'package:imanager/imanager.dart';
import 'package:login/login.dart';

void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    /// register all modules
    registerAllModules();

    /// init all modules
    ModuleManager.instance.init();

    runApp(const MyApp());
  }, (error, stackTrace) {
    print('runZonedGuarded: Caught error in my root zone. $error $stackTrace');
  });
}

/// register all modules which need to add to the project's pubspec.yaml
void registerAllModules() {
  HomePageModule().registerWith();
  LoginModule().registerWith();
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> implements EventCallback {

  UserInfo? userInfo;
  @override
  void initState() {
    super.initState();
    ModuleManager.instance.addListener(Register, this);
    ModuleManager.instance.addListener(Login, this);
    ModuleManager.instance.addListener(Logout, this);
  }

  @override
  void dispose() {
    super.dispose();
    ModuleManager.instance.removeListener(Register, this);
    ModuleManager.instance.removeListener(Login, this);
    ModuleManager.instance.removeListener(Logout, this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _buildBody() 
    );
  }

  Widget _buildBody() {
    final loginModule = ILoginModule.instance as ILoginModule?;
    bool isLogin = loginModule?.isLogin() ?? false;
    if (!isLogin) {
      return loginModule?.getLoginPage() ?? const SizedBox();
    }
    bool isFinishedRegister = loginModule?.isFinishedRegister() ?? false;
    if (!isFinishedRegister) {
      return loginModule?.getRegisterPage() ?? const SizedBox();
    }
    final homePageModule = IHomePageModule.instance as IHomePageModule?;
    return homePageModule?.getHomePage("Hello ${userInfo?.username ?? 'amorous'}") ?? const SizedBox();
  }

  @override
  void onEvent(EventName type, dynamic data) {
    print("type:$type  data: ${data?.toString()}");
    switch (type) {
      case Login:
      case Logout:
      case Register:
        if (null != data && data is UserInfo) {
          userInfo = data;
        }
        setState(() {});
        break;
    }
  }
}
