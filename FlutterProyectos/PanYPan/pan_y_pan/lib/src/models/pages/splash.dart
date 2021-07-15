import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:pan_y_pan/src/shared/user_preferences.dart';

class SplashPage extends StatelessWidget {
  final preferences = Preferences();

  @override
  Widget build(BuildContext context) {
    changeScreen(context);

    return Scaffold(
        body: Stack(children: <Widget>[
      new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/img/menuLogin2.jpg"),
            colorFilter:
                ColorFilter.mode(Colors.blueGrey.shade300, BlendMode.modulate),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SingleChildScrollView(
          child: Column(children: [
        Bounce(
          child: Animacion(),
          infinite: true,
        ),
      ]))
    ]));

    //   Container(
    //     child: Center(
    //       child: Image(
    //         image: AssetImage('assets/img/splash.jpeg'),
    //         fit: BoxFit.fill,
    //       ),
    //     ),
    //   ),
    // );
  }

  void changeScreen(BuildContext context) {
    print(preferences.token);
    final String routeName = 'login';
    // preferences.token != '' ? 'login' : 'login';

    Timer(Duration(seconds: 12), () {
      Navigator.pushReplacementNamed(context, routeName);
    });
  }
}

class Animacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            "assets/img/pan_pan.png",
            width: 450,
            height: 550,
          ),
        ],
      ),
    );
  }
}
