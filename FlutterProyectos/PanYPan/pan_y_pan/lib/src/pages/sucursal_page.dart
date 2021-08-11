import 'package:pan_y_pan/src/providers/sucursal_provider.dart';
//import 'package:pan_y_pan/src/widgets/movie_horizontal_widget.dart';
import 'package:flutter/material.dart';
import 'package:pan_y_pan/src/shared/user_preferences.dart';
import 'package:pan_y_pan/src/widgets/sucursal_horizontal_widget.dart';

class SucursalesPage extends StatelessWidget {
  final sucursalesProvider = SucursalProvider();
  final preferences = Preferences();

  @override
  Widget build(BuildContext context) {
    sucursalesProvider.obtenersucursales();

    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
        actions: [
          IconButton(onPressed: () => logout(context), icon: Icon(Icons.logout))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text('Sucursales'),
          _sucursales(),
          Divider(),
        ],
      ),
    );
  }

  void logout(BuildContext context) {
    Navigator.pushReplacementNamed(context, 'login');
  }

  Widget _sucursales() {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 5.0),
          StreamBuilder(
              stream: sucursalesProvider.popularesStream,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return SucursalHorizontalWidget(
                      sucursal: snapshot.data,
                      nextPage: sucursalesProvider
                          .obtenersucursales); // Aqui estará la funcionalidad
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              })
        ],
      ),
    );
  }
}
