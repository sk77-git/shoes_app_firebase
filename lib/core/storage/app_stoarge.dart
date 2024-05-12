import 'package:get_storage/get_storage.dart';

class AppStorage {
  static final _box = GetStorage();
  static const String _userId = "userId";
  static const String _userToken = "userToken";

  static void write(String key, dynamic value) {
    _box.write(key, value);
  }

  static dynamic read(String key, dynamic defaultValue) {
    dynamic value = _box.read(key);
    if (value == null) {
      return defaultValue;
    } else {
      return value;
    }
  }

  static void clear() {
    _box.erase();
  }

  static int getUserId() {
    return read(_userId, -1);
  }

  static void setUserId(int value) {
    write(_userId, value);
  }

  static String getUserToken() {
    return read(_userToken, "");
  }

  static void setUserToken(String value) {
    write(_userToken, value);
  }
}
