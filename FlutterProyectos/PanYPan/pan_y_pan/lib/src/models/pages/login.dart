import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
//import 'package:pan_y_pan/src/models/pages/menu_principal.dart';
import 'package:pan_y_pan/src/tools/conexion.dart';
import 'package:pan_y_pan/src/shared/user_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();
  Preferences preferences = Preferences();
  @override
  Widget build(BuildContext context) {
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
          child: Column(
        children: [
          Bounce(
            child: Animacion(),
            infinite: true,
          ),
          SizedBox(
            height: 15.0,
          ),
          TextField(
            controller: _usernameController,
            style: TextStyle(color: Colors.white),
            keyboardType: TextInputType.emailAddress,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Usuario',
                hintStyle: const TextStyle(color: Colors.white, fontSize: 15.0),
                prefixIcon: Icon(Icons.person_outline, color: Colors.white)),
          ),
          SizedBox(
            height: 18.0,
          ),
          TextField(
            controller: _passwordController,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            textCapitalization: TextCapitalization.sentences,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Contraseña',
                hintStyle: const TextStyle(color: Colors.white, fontSize: 15.0),
                prefixIcon: Icon(Icons.lock, color: Colors.white)),
          ),
          SizedBox(
            height: 98.0,
          ),
          ButtonTheme(
            minWidth: 330.0,
            height: 60.0,
            child: RaisedButton(
                onPressed: () => login(context),
                color: Colors.cyan.shade700,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      new BorderRadius.all(const Radius.circular(30.0)),
                  side: BorderSide(color: Colors.cyan.shade700),
                ),
                child: Text(
                  "Ingresar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.3,
                  ),
                )),
          )
        ],
      )),
    ]));
  }

  void login(BuildContext context) {
    // _usernameController.text = "rutaj";
    // _passwordController.text = "Nuevo";
    final String username = _usernameController.text;
    final String password = _passwordController.text;
    LoginProvider lg = LoginProvider();
    if (username == '' || password == '') {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Debes de llenar los campos requeridos')));
    } else {
      lg.validateAccount(email: username, password: password);
      print(preferences.usulog);
      if (preferences.usulog) {
        Navigator.pushReplacementNamed(context, 'menu');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
                'No se permite el acceso, comunicate con el proveedor del sistema.')));
      }
    }
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
            width: 250,
            height: 250,
          ),
        ],
      ),
    );
  }
}
