import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:pan_y_pan/src/tools/fuction_generics.dart';
//import 'package:pan_y_pan/src/tools/fuction_generics.dart';
import 'package:pan_y_pan/src/widgets/drawer_widget.dart';

class MenuPrincipal extends StatelessWidget {
  DateTime _valini = new DateTime.now().add(Duration(days: -4));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //key: scaffolKey,
        // appBar: AppBar(
        //   //backgroundColor: Colors.transparent,
        //   flexibleSpace: FlexibleSpaceBar(
        //     collapseMode: CollapseMode.parallax,
        //   ),
        //   toolbarOpacity: 1.00,
        // ),
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
                  height: 65.0,
                ),
                    Text("Bienvenido",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontSize: 30.0,
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                SizedBox(
                  height: 135.0,
                ),
                DatePicker(
                  _valini,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.black,
                  selectedTextColor: Colors.white,
                  locale: "en_US",
                ),
                SizedBox(
                  height: 45.0,
                ),
                CardPedidos(),
              ],
            ),
          )
        ]));
  }
}
