import 'package:flutter/src/widgets/framework.dart';
import 'package:home_page/src/my_home_page.dart';
import 'package:imanager/imanager.dart';
import 'package:imanager/src/proto/generated/event_cmd.pb.dart';

final class HomePageModule extends IHomePageModule{

  @override
  void registerWith() {
    IHomePageModule.instance = this;
    ModuleManager.instance.registerModule(this);
    ModuleManager.instance.addListener(Inited, this);
  }

  @override
  Widget getHomePage(String title) {
    return MyHomePage(title: title);
  }

  @override
  String getModuleName() {
    return 'home_page';
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
  void onEvent(EventName type, dynamic data) {
    switch(type){
      case Inited:
      break;
    }
  }
  
  
}