import 'package:hayaa_shop/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum PrefKeys {
  loggedIn,
  id,
  fullname,
  email,
  password,
  token
}

class SharedPrefController {
  late SharedPreferences _sharedPreferences;

  SharedPrefController._();

  static SharedPrefController? instance;

  factory SharedPrefController() {
    return instance ??= SharedPrefController._();
  }

  Future<void> initPerfernces() async {
    _sharedPreferences = await SharedPreferences.getInstance();


  }


  T? getValueFor<T>({required String key})  {
    if (_sharedPreferences.containsKey(key)) {
      return  _sharedPreferences.get(key) as T;
    }
    return null;
  }

  Future<bool> clear() {
    return _sharedPreferences.clear();
  }

  // Save Data
  Future<void> save({required User user}) async {
    await _sharedPreferences.setBool(PrefKeys.loggedIn.name, true);
    await _sharedPreferences.setInt(PrefKeys.id.name, user.id);
    await _sharedPreferences.setString(PrefKeys.fullname.name, user.fullName);
    await _sharedPreferences.setString(PrefKeys.email.name, user.email);
    await _sharedPreferences.setString(PrefKeys.token.name, 'Bearer ${user.token}');
  }
}