import 'package:flutter/material.dart';
import 'package:pan_y_pan/src/widgets/drawer_widget.dart';

class DetailSucursal extends StatefulWidget {
  final codigosucursal;
  final nombresucursal;
  final estadosucursal;
  final encargadosucursal;
  final telefonosucursal;
  final direccionsucursal;

  DetailSucursal(
      {this.codigosucursal,
      this.nombresucursal,
      this.estadosucursal,
      this.encargadosucursal,
      this.telefonosucursal,
      this.direccionsucursal});

  @override
  _DetailSucursalState createState() => _DetailSucursalState();
}

class _DetailSucursalState extends State<DetailSucursal> {
  DateTime _valini = new DateTime.now().add(Duration(days: -4));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerdWidget(),
        body: Stack(children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage(
                  "assets/img/menu.jpg",
                ),
                alignment: Alignment.topCenter,
                colorFilter: ColorFilter.mode(
                    Colors.blueGrey.shade300, BlendMode.modulate),
                fit: BoxFit.fitWidth,
              ),
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
                  widget.nombresucursal!,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontSize: 30.0,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20.0,
                ),

                SizedBox(
                  height: 25.0,
                ),
                // menuLineal(),
                // SizedBox(
                //   height: 25.0,
                // ),
                //CardPedidos(context),

                // Container(
                //   child: HorizontalList(),
                // ),
                //HorizontalList(),
              ],
            ),
          )
        ]));
  }
}
