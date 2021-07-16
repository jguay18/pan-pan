//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pan_y_pan/src/shared/user_preferences.dart';

GlobalKey<ScaffoldState> scaffolKey = GlobalKey<ScaffoldState>();

// ignore: non_constant_identifier_names
Image Iconos(String nIcon) {
  // ignore: avoid_init_to_null
  Image? respimg = null;
  // ignore: avoid_init_to_null
  AssetImage? img = null;
  if (nIcon == "Home") {
    img = AssetImage('assets/img/house.png');
  } else if (nIcon == "Pedidos") {
    img = AssetImage('assets/img/choices.png');
  } else if (nIcon == "pagos") {
    img = AssetImage('assets/img/hand.png');
  } else if (nIcon == "Cierre Diario") {
    img = AssetImage('assets/img/calendar.png');
  } else if (nIcon == "Materia Prima") {
    img = AssetImage('assets/img/rawmaterials.png');
  } else if (nIcon == "Cuadre") {
    img = AssetImage('assets/img/house.png');
  } else if (nIcon == "Sucursales") {
    img = AssetImage('assets/img/bank.png');
  } else if (nIcon == "Usuarios") {
    img = AssetImage('assets/img/profile.png');
  } else if (nIcon == "Procuctos") {
    img = AssetImage('assets/img/package.png');
  } else {
    img = AssetImage('assets/img/package.png');
  }
  respimg = Image(image: img);
  return respimg;
}

Drawer menu(BuildContext context) {
  //esta variable se debe de cambiar para que se haga la validacio con un preference que ya este cargado.
  String rol = "1";
  Preferences pref = Preferences();
  // ignore: avoid_init_to_null
  Drawer? dr = null;
  if (rol == "1") {
    dr = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/barner.jpeg'),
                    fit: BoxFit.fill)),
          ),
          Text("    Bienvenido " + pref.usuario),
          ListTile(
            leading: Iconos("Home"),
            title: Text('Inicio'),
            onTap: () => Navigator.pushReplacementNamed(context, ''),
          ),
          ListTile(
            leading:
                Iconos("pedidos"), // Icon(Icons.phone, color: Colors.black),
            title: Text('Pedidos'),
            onTap: () => Navigator.pushReplacementNamed(context, 'contact'),
          ),
          ListTile(
            leading: Iconos("Cierre Diario"),
            title: Text('Cierre Diario'),
            onTap: () => Navigator.pushReplacementNamed(context, 'contact'),
          ),
          ListTile(
            leading: Iconos("Materia Prima"),
            title: Text('Materia Prima'),
            onTap: () => Navigator.pushReplacementNamed(context, 'contact'),
          ),
          ListTile(
            leading: Iconos("Cuadre"),
            title: Text('Cuadre'),
            onTap: () => Navigator.pushReplacementNamed(context, 'contact'),
          ),
          ListTile(
            leading: Iconos("Sucursales"),
            title: Text('Sucursales'),
            onTap: () => Navigator.pushReplacementNamed(context, 'contact'),
          ),
          ListTile(
            leading: Iconos("Usuarios"),
            title: Text('Usuarios'),
            onTap: () => Navigator.pushReplacementNamed(context, 'contact'),
          ),
          ListTile(
            leading: Iconos("Productos"),
            title: Text('Productos'),
            onTap: () => Navigator.pushReplacementNamed(context, 'contact'),
          ),
        ],
      ),
    );
  } else if (rol == "2") {
    dr = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/pan.jpg'),
                    fit: BoxFit.cover)),
          ),
          Divider(
            color: Colors.black,
            height: 10.00,
            thickness: 5.00,
          ),
          ListTile(
            leading: Iconos("Home"),
            title: Text('Inicio'),
            onTap: () => Navigator.pushReplacementNamed(context, ''),
          ),
          ListTile(
            leading:
                Iconos("pedidos"), // Icon(Icons.phone, color: Colors.black),
            title: Text('Pedidos'),
            onTap: () => Navigator.pushReplacementNamed(context, 'contact'),
          ),
          ListTile(
            leading: Iconos("Cierre Diario"),
            title: Text('Cierre Diario'),
            onTap: () => Navigator.pushReplacementNamed(context, 'contact'),
          ),
          ListTile(
            leading: Iconos("Cuadre"),
            title: Text('Cuadre'),
            onTap: () => Navigator.pushReplacementNamed(context, 'contact'),
          ),
        ],
      ),
    );
  } else {
    dr = Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
      DrawerHeader(
        child: Container(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/img/barner.jpeg'), fit: BoxFit.fill)),
      ),
      ListTile(
        leading: Iconos("Home"),
        title: Text('Inicio'),
        onTap: () => Navigator.pushReplacementNamed(context, ''),
      ),
    ]));
  }

  return dr;
}

Widget CardPedidos() {
  Widget? cc = null;
  SizedBox(height: 30);
  cc = Container(
    height: 245,
    width: 202,
    child: Stack(
      children: <Widget>[
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          top: 0,
          child: Container(
            height: 221,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 33,
                    color: Color(0xFFD3D3D3).withOpacity(.84),
                  )
                ]),
          ),
        ),
        Image.asset(
          "assets/img/bread.png",
          width: 150,
        ),
        Positioned(
            top: 160,
            child: Container(
                height: 85,
                width: 202,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                                text: "crushing & Influence" "\n",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: "GARY VENKUNW",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 101,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: Text("Details"),
                        ),
                        Expanded(
                            child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(29),
                                bottomRight: Radius.circular(29)),
                          ),
                          child: Text(
                            "Pedir",
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                      ],
                    )
                  ],
                )))
      ],
    ),
  );

  return cc;
}
