import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  //! متغير خاص لتخزين الكائن
  static late SharedPreferences _instance;

  //! دالة التهيئة
  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  static setBool({required String key, required bool value}) {
    _instance.setBool(key, value);
  }

  static getBool({required String key}) {
    return _instance.getBool(key) ?? false;
  }
 



}
