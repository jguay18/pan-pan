import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class LoginPage extends StatefulWidget {
  
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
              image: new AssetImage("assets/img/login.jpg"),
              colorFilter: ColorFilter.mode(Colors.deepOrange.shade300, BlendMode.modulate),
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
                 keyboardType: TextInputType.emailAddress,
               textCapitalization: TextCapitalization.sentences,
               decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Usuario',
                hintStyle: const TextStyle(color: Colors.white, fontSize: 15.0),
                prefixIcon: Icon(Icons.person_outline, color: Colors.white)
              ),
              ),
               SizedBox(
              height: 18.0,
               ),
               TextField(
                 keyboardType: TextInputType.visiblePassword,
               textCapitalization: TextCapitalization.sentences,
               decoration: InputDecoration(
               border: InputBorder.none,
                hintText: 'Contraseña',
                hintStyle: const TextStyle(color: Colors.white, fontSize: 15.0),
                prefixIcon: Icon(Icons.lock, color: Colors.white)
              ),
              ),
              SizedBox(
              height: 98.0,
               ),
              ButtonTheme(
                minWidth: 330.0,
                height: 60.0,
                child: RaisedButton(
                  onPressed: () {},
                   color: Colors.cyan.shade700,
                   shape: RoundedRectangleBorder(
                   borderRadius: new BorderRadius.all(const Radius.circular(30.0)),
                    side: BorderSide(color: Colors.cyan.shade700),
                   ),
                   child: Text("Ingresar", style: TextStyle(color: Colors.white,fontSize: 20.0,
                     fontWeight: FontWeight.w300,
                     letterSpacing: 0.3,),
                   )
                ),  
              )
            ],
            )
          ),
           ]
          )
      );
      
  }



}

class Animacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset("assets/img/tick.png", width: 250, height: 250,),
        ],
      ),
    );
  }
}
