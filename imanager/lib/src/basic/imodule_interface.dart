part of imanager;


enum Priority {
  none, // the least priority
  high, // the highest priority
  medium, // the middle priority
  low, // the low priority
}


abstract class IModuleInterface {

  String getPackageName();
  String getModuleName();
  Future<void> init(ModuleManager moduleManager);
  bool isInitialized();
  void registerWith();

  Priority getInitPriority();
}