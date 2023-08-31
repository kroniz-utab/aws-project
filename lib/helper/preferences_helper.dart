import 'package:shared_preferences/shared_preferences.dart';

class PreferencesHelper {
  final Future<SharedPreferences> sharedPreferences;

  PreferencesHelper(this.sharedPreferences);

  static const accessTokenKey = 'token';

  Future<String> get accessToken async {
    final prfs = await sharedPreferences;
    return prfs.getString(accessTokenKey) ?? '';
  }

  void setAccessToken(String token) async {
    final prfs = await sharedPreferences;
    prfs.setString(accessTokenKey, token);
  }
}
