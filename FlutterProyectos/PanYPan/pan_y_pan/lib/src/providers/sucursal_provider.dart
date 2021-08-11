import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pan_y_pan/src/models/sucursal_model.dart';
import 'package:pan_y_pan/src/shared/user_preferences.dart';
import 'package:pan_y_pan/src/tools/conexion.dart';

class SucursalProvider {
  String _baseUrl = "";
  String _compbaseUrl = "";
  final preferences = Preferences();
  bool _cargando = false;
  List<Sucursal> _populares = [];
  final _popularesStreanController =
      StreamController<List<Sucursal>>.broadcast();

  Stream<List<Sucursal>> get popularesStream =>
      _popularesStreanController.stream;
  Function(List<Sucursal>) get popularesSink =>
      _popularesStreanController.sink.add;

  void disposeStreams() {
    _popularesStreanController.close();
  }

  Future<List<Sucursal>> obtenersucursales() async {
    if (_cargando) return [];
    _cargando = true;

    String _metodo, _datos, _estructuraDatos;
    Metodos met = Metodos();
    met.obtenerenlace();
    _baseUrl = met.baseUrl;
    _compbaseUrl = met.compbaseUrl;
    met.obtenermetodos(2);
    _metodo = met.metodo;
    _estructuraDatos = met.estructura;
    _datos = _estructuraDatos;
    final url =
        Uri.http(_baseUrl, _compbaseUrl, {'metodo': _metodo, 'datos': _datos});
    final resp = await http.get(url);

    //final decodeData = json.decode(resp.body);
    //Map<String, dynamic> respJson = json.decode(resp.body);
    //print(respJson);
    final decodedData = json.decode(resp.body);
    //print(decodedData["results"]);
    //print(resp.body);

    final sucursales = Sucursales.fromJsonArray(decodedData["results"]).items;
    _populares.addAll(sucursales);
    popularesSink(_populares);

    _cargando = false;
    return sucursales;
  }
}
