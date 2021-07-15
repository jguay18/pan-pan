import 'package:flutter/material.dart';
import 'package:pan_y_pan/src/routes/routes.dart';
import 'package:pan_y_pan/src/shared/user_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preferences = Preferences();
  await preferences.initPreferences();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: getApplicatiobRoutes(),
      initialRoute: 'splash',
    );
  }
}
