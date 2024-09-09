part of imanager;

enum EventType {
  // Add a parameter list
  none,
  // system events
  inited,
  register,
  login,
  logout,
  change_language,
  change_theme,
  check_upgrade,
  need_fetch_remote_config,
  remote_config_updated,
  host_changed,
  // custom event
  custom,
}

@immutable 
class EventName {
  const EventName._(this.type, {this.name = ''});

  factory EventName.fromJson(String name) {    
    return EventName._(EventType.custom, name: name);  
  }  
    final EventType type;  
    final String name;
    
    @override  
    String toString() {
      return 'EventName{type: $type, name: $name}';
    }  
}

/// system events
const EventName Inited = EventName._(EventType.inited,name: '');
const EventName Register = EventName._(EventType.register,name: '');
const EventName Login = EventName._(EventType.login,name: '');
const EventName Logout = EventName._(EventType.logout,name: '');
const EventName ChangeLan = EventName._(EventType.change_language,name: '');
const EventName ChangeTheme = EventName._(EventType.change_theme,name: '');
const EventName CheckUpgrade= EventName._(EventType.check_upgrade,name: '');
const EventName NeedFetchRemoteConfig= EventName._(EventType.need_fetch_remote_config,name: '');
const EventName RemoteConfigUpdated= EventName._(EventType.remote_config_updated,name: '');
const EventName HostChanged= EventName._(EventType.host_changed,name: '');
