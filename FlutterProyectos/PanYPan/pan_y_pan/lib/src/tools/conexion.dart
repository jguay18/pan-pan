import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:pan_y_pan/src/shared/user_preferences.dart';

class Metodos {
  String metodo = "";
  String estructura = "";
  void obtenermetodos(int tipo) {
    if (tipo == 1) {
      metodo = "VerificacionCredenciales";
      estructura =
          "%7B%22Usuario%22%3A%22{1}%22%2C%22Contrasena%22%3A%22{2}%22%7D";
    }
  }
}

class LoginProvider {
  String _baseUrl = "services.adisigt.com";
  String _compbaseUrl = "/panypan/WebApi/api/Mobil";
  final preferences = Preferences();

  void validateAccount(
      {required String email, required String password}) async {
    String _metodo, _datos, _estructuraDatos;
    Metodos met = Metodos();
    met.obtenermetodos(1);
    _metodo = met.metodo;
    _estructuraDatos = met.estructura;
    _datos =
        _estructuraDatos.replaceAll('{1}', email).replaceAll('{2}', password);
    final url =
        Uri.http(_baseUrl, _compbaseUrl, {'metodo': _metodo, 'datos': _datos});
    final resp = await http.get(url);
    //final decodeData = json.decode(resp.body);
    Map<String, dynamic> respJson = json.decode(resp.body);
    print(respJson);
    print(respJson["Datos"]["Correo"]);
    if (respJson["error"] != null) {
      preferences.usulog = false;
    } else {
      preferences.usuario = respJson["Usuario"];
      preferences.correo = respJson["Datos"]["Correo"];
      preferences.pasusu = password;
      preferences.usulog = respJson["CredencialesValidas"] as bool;
      //print(preferences.usulog);
    }
  }
}
