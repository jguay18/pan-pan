class Sucursales {
  List<Sucursal> items = [];
  Sucursales();

  Sucursales.fromJsonArray(List<dynamic> jsonArray) {
    for (var item in jsonArray) {
      final sucursal = Sucursal.fromJsonMap(item);
      items.add(sucursal);
    }
  }
}

class Sucursal {
  int? codigo;
  String? nombre;
  String? direccion;
  String? telefono;
  String? encargado;
  String? geolocalizacion;
  String? estado;
  String? tipo;
  String? clasificacion;

  Sucursal({
    this.codigo,
    this.nombre,
    this.direccion,
    this.telefono,
    this.encargado,
    this.geolocalizacion,
    this.estado,
    this.tipo,
    this.clasificacion,
  });

  Sucursal.fromJsonMap(Map<String, dynamic> json) {
    this.codigo = json["Codigo"] as int;
    this.nombre = json["Nombre"];
    this.direccion = json["Direccion"];
    this.telefono = json["Telefono"];
    this.encargado = json["Encargado"];
    this.geolocalizacion = json["Geolocation"];
    this.estado = json["Estado"];
    this.tipo = json["Tipo"];
    this.clasificacion = json["Clasificacion"];
  }
}
