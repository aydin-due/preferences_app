import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  // static -> no se necesita instanciar la clase para acceder a sus métodos
  // late -> se inicializa en el primer uso
  static late SharedPreferences _prefs;
  static String _name = '';
  static bool _isDarkMode = false;
  static int _gender = 1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }
}
