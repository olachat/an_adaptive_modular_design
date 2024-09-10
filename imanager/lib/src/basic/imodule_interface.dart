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
  
  /// higher priority tier module will be initialized first
  Priority getInitPriorityTier();

  /// higher priority module will be initialized first
  int getPriorityNumber();
}