import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

class MenuPrincipal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
           children: <Widget>[
              new Container(
              decoration: new BoxDecoration(
              image: new DecorationImage(
              image: new AssetImage("assets/img/home.jpg",),
              alignment: Alignment.topCenter,
              colorFilter: ColorFilter.mode(Colors.blueGrey.shade300, BlendMode.modulate),
              fit: BoxFit.fitWidth,
            ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              SizedBox(
                height: 35.0,
              ),
              Text("Bienvenido", 
              textAlign: TextAlign.center,
              style: new TextStyle(fontSize: 30.0,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w300,color: Colors.white),
             ),
              SizedBox(
                height: 150.0,
              ),
              DatePicker(DateTime.now())
              
            

              ],
            ),
          )
        ]
      )
    
    );
  }
 
   
}