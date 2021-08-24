import 'package:pan_y_pan/src/providers/sucursal_provider.dart';
import 'package:flutter/material.dart';
import 'package:pan_y_pan/src/shared/user_preferences.dart';
import 'package:pan_y_pan/src/widgets/drawer_widget.dart';

class SucursalesAddPage extends StatelessWidget {
  final sucursalesProvider = SucursalProvider();

  final preferences = Preferences();

  final ButtonStyle mainButtonStyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.brown),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      shape: MaterialStateProperty.all<StadiumBorder>(StadiumBorder()));

  @override
  Widget build(BuildContext context) {
    //sucursalesProvider.obtenersucursales();

    return Scaffold(
      drawer: DrawerdWidget(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
        children: [
          _topContainer(context),
          Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
        ],
      ),
    );
  }
}

Widget _topContainer(BuildContext context) {
  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _direccionController = TextEditingController();
  final _encargadoController = TextEditingController();
  String dropdownValue = 'Minorista';
  return Container(
    child: Row(
      children: [
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              height: 80.00,
              child: TextField(
                controller: _nameController,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  labelText: 'Nombre',
                  prefixIcon: Icon(
                    Icons.account_circle,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              height: 80.00,
              child: TextField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  labelText: 'Teléfono',
                  prefixIcon: Icon(
                    Icons.phone,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              height: 175.00,
              child: TextField(
                controller: _direccionController,
                maxLines: 5,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  labelText: 'Direccion',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              height: 80.00,
              child: TextField(
                controller: _encargadoController,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  labelText: 'Encargado',
                  prefixIcon: Icon(
                    Icons.message,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              height: 80.00,
              width: 100.00,
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  width: 100.00,
                  color: Colors.deepPurpleAccent,
                ),
                // onChanged: (String? newValue) {
                //   dropdownValue = newValue!;
                // },
                onTap: (String? newValue) {
                  dropdownValue = newValue!;
                },
                items: <String>['Minorista', 'Mayorista', 'Otros']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        )),
      ],
    ),
  );
}
