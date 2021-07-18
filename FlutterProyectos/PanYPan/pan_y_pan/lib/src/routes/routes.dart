//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:pan_y_pan/src/models/pages/login.dart';
import 'package:pan_y_pan/src/models/pages/menu_principal.dart';
import 'package:pan_y_pan/src/models/pages/pedidos.dart';
import 'package:pan_y_pan/src/models/pages/splash.dart';
//import 'package:pan_y_pan/src/tools/extras/horizontal_list.dart';

Map<String, WidgetBuilder> getApplicatiobRoutes() {
  return <String, WidgetBuilder>{
    'login': (context) => LoginPage(),
    'menu': (context) => MenuPrincipal(),
    'splash': (context) => SplashPage(),
    'pedidos': (context) => Pedidos(),
  };
}
