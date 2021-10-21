import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefProvider {
  static const String AUTH_KEY = 'auth_key';

  void setAuth(bool was) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs.setBool(AUTH_KEY, was);
  }

  Future<bool> getAuth() async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    return _prefs.getBool(AUTH_KEY) ?? false;
  }
}
