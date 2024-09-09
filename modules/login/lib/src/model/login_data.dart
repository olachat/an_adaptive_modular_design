
class LoginData {
  static bool _isLogined = false;
  static bool get isLogined => _isLogined;
  static set isLogined(bool value) {
    _isLogined = value;
  }

  static bool _isFinishedRegistered = false;
  static bool get isFinishedRegistered => _isFinishedRegistered; 
  static set isFinishedRegistered(bool value) {
    _isFinishedRegistered = value;
  }

  static String _userName = '';
  static String get userName => _userName;
  static set userName(String value) {
    _userName = value;
  }

}