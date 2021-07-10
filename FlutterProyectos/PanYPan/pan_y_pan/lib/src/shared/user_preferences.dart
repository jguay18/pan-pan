import 'package:shared_preferences/shared_preferences.dart';

class Preferences {

  static final Preferences _instance = new Preferences._(); 

  factory Preferences() {
    return _instance;
  }

  Preferences._();

  SharedPreferences? _preferences;

  initPreferences() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // Getters y Setters
  set token(String value) {
    _preferences?.setString('token', value);
  }

  String get token {
    return _preferences?.getString('token') ?? ''; 
  }

}