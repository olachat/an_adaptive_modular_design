part of imanager;

abstract interface class EventCallback {
  void onEvent(EventName type, dynamic data);
}

abstract interface class IEvent {
  /// add a listener to the type of event's callback list
  void addListener(EventName type, EventCallback listener) ;
  /// remove a listener from the type of event's callback list, if listener is null, remove all listeners in it
  void removeListener(EventName type, EventCallback? listener) ;
  /// get the callback list of the type of event 
  ObserverList<EventCallback>? getCallbacks(EventName type);
  /// emit a event with the type and data
  void emit(EventName type, [dynamic data]) ;
}

