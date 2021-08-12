import 'package:pan_y_pan/src/providers/sucursal_provider.dart';
//import 'package:pan_y_pan/src/widgets/movie_horizontal_widget.dart';
import 'package:flutter/material.dart';
import 'package:pan_y_pan/src/shared/user_preferences.dart';
import 'package:pan_y_pan/src/widgets/drawer_widget.dart';
import 'package:pan_y_pan/src/widgets/sucursal_horizontal_widget.dart';

class SucursalesPage extends StatelessWidget {
  final sucursalesProvider = SucursalProvider();
  final preferences = Preferences();

  @override
  Widget build(BuildContext context) {
    sucursalesProvider.obtenersucursales();

    return Scaffold(
      drawer: DrawerdWidget(),
      // appBar: AppBar(
      //   title: Text('Movies'),
      //   actions: [
      //     IconButton(onPressed: () => logout(context), icon: Icon(Icons.logout))
      //   ],
      // ),
      body: Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage(
                    "assets/img/menu.jpg",
                  ),
                  alignment: Alignment.topCenter,
                  colorFilter: ColorFilter.mode(
                      Colors.blueGrey.shade300, BlendMode.modulate),
                  fit: BoxFit.fitWidth),
            ),
          ),
          SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  "Lista de Sucursales",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontSize: 30.0,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 25.0,
                ),
                //ListView(
                //   padding: EdgeInsets.all(8.0),
                //children: [
                _sucursales(),
                //Divider(),
                Text(
                  "321",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontSize: 30.0,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 35.0,
                ),
                //   ],
                // ),
              ])),
          SizedBox(
            height: 135.0,
          ),
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
