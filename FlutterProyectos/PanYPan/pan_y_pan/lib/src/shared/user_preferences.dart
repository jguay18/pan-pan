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

  // Getters y Setters UsuLog
  set usulog(bool value) {
    _preferences?.setBool('usulog', value);
  }

  bool get usulog {
    return _preferences?.getBool('usulog') ?? false;
  }

  // Getters y Setters Usuario
  set usuario(String value) {
    _preferences?.setString('usuario', value);
  }

  String get usuario {
    return _preferences?.getString('usuario') ?? '';
  }

  // Getters y Setters Usuario
  set correo(String value) {
    _preferences?.setString('correo', value);
  }

  String get correo {
    return _preferences?.getString('correo') ?? '';
  }

  // Getters y Setters Pass
  set pasusu(String value) {
    _preferences?.setString('pasusu', value);
  }

  String get pasusu {
    return _preferences?.getString('pasusu') ?? '';
  }
}
