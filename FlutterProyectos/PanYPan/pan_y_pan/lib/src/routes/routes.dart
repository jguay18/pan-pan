//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:pan_y_pan/src/pages/login.dart';
import 'package:pan_y_pan/src/pages/menu_principal.dart';
import 'package:pan_y_pan/src/pages/pedidos/pedidos.dart';
import 'package:pan_y_pan/src/pages/splash.dart';
import 'package:pan_y_pan/src/pages/sucursal/sucursal_add_page.dart';
import 'package:pan_y_pan/src/pages/sucursal/sucursal_page.dart';
import 'package:pan_y_pan/src/tools/extras/details_screen.dart';
//import 'package:pan_y_pan/src/tools/extras/horizontal_list.dart';

Map<String, WidgetBuilder> getApplicatiobRoutes() {
  return <String, WidgetBuilder>{
    'login': (context) => LoginPage(),
    'menu': (context) => MenuPrincipal(),
    'splash': (context) => SplashPage(),
    'pedidos': (context) => Pedidos(),
    'details': (context) => DetailsScreen(),
    'sucursales': (context) => SucursalesPage(),
    'inicio': (context) => MenuPrincipal(),
    'addsucursales': (context) => SucursalesAddPage(),
  };
}
