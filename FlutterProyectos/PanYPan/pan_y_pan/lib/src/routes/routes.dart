//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:pan_y_pan/src/models/pages/login.dart';
import 'package:pan_y_pan/src/models/pages/menu_principal.dart';
import 'package:pan_y_pan/src/models/pages/splash.dart';

Map<String, WidgetBuilder> getApplicatiobRoutes() {
  return <String, WidgetBuilder>{
    'login': (context) => LoginPage(),
    'menu': (context) => MenuPrincipal(),
    'splash': (context) => SplashPage(),
  };
}
