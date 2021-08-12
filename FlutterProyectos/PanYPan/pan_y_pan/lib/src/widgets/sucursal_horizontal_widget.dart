import 'package:flutter/material.dart';
import 'package:pan_y_pan/src/models/sucursal_model.dart';
import 'package:pan_y_pan/src/pages/sucursal_detail_page.dart';
import 'package:pan_y_pan/src/tools/fuction_generics.dart';

class SucursalHorizontalWidget extends StatelessWidget {
  final List<Sucursal>? sucursal;
  final Function? nextPage;

  SucursalHorizontalWidget({@required this.sucursal, @required this.nextPage});
  //final _pageController = PageController(initialPage: 1, viewportFraction: 0.3);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    // _pageController.addListener(() {
    //   if (_pageController.position.pixels >=
    //       _pageController.position.maxScrollExtent - 200) {
    //     nextPage!();
    //   }
    // });

    return Container(
      height: _screenSize.height,
      child: ListView.builder(
          //pageSnapping: false,
          //controller: _pageController,
          scrollDirection: Axis.vertical,
          itemCount: sucursal!.length,
          itemBuilder: (context, position) =>
              _createCard(context, sucursal![position])),
    );
  }

  Widget _createCard(BuildContext context, Sucursal sucursal) {
    Widget? cc = null;
    var size = MediaQuery.of(context).size;
    cc = Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 33,
            color: Color(0xFFD3D3D3).withOpacity(.84),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: sucursal.nombre! + "\n",
                    style: formato_texto("M", "BA", true)),
                TextSpan(
                    text: sucursal.direccion! + "\n",
                    style: formato_texto("M", "BA", true)),
                TextSpan(
                    text: sucursal.telefono! + "\n",
                    style: formato_texto("M", "BA", true)),
                TextSpan(
                    text: sucursal.estado! + "\n",
                    style: formato_texto("M", "BA", true)),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
            onPressed: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new DetailSucursal(
                      codigosucursal: sucursal.codigo!.toString(),
                      nombresucursal: sucursal.nombre!.toString(),
                      estadosucursal: sucursal.estado!.toString(),
                      encargadosucursal: sucursal.encargado!.toString(),
                      telefonosucursal: sucursal.telefono.toString(),
                      direccionsucursal: sucursal.direccion!.toString())));

              //Navigator.pushReplacementNamed(context, '');
            },
          )
        ],
      ),
    );

    return cc;

    Container(
      margin: EdgeInsets.only(right: 15.0),
      child: Column(
        children: [
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(20.0),
          //   child: FadeInImage(
          //     placeholder: AssetImage('assets/img/no-image.jpg'),
          //     image: NetworkImage(sucursal.getPosterImage()),
          //     fit: BoxFit.cover,
          //     height: 160.0
          //   ),
          // ),
          SizedBox(height: 5.0),
          Text(
            sucursal.nombre!,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            sucursal.direccion!,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            sucursal.telefono!,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            sucursal.estado!,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
