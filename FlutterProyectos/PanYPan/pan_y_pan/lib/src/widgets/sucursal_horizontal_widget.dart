import 'package:flutter/material.dart';
import 'package:pan_y_pan/src/models/sucursal_model.dart';

class SucursalHorizontalWidget extends StatelessWidget {
  final List<Sucursal>? sucursal;
  final Function? nextPage;

  SucursalHorizontalWidget({@required this.sucursal, @required this.nextPage});
  final _pageController = PageController(initialPage: 1, viewportFraction: 0.3);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    _pageController.addListener(() {
      if (_pageController.position.pixels >=
          _pageController.position.maxScrollExtent - 200) {
        nextPage!();
      }
    });

    return Container(
      height: _screenSize.height * 0.3,
      child: PageView.builder(
          pageSnapping: false,
          controller: _pageController,
          itemCount: sucursal!.length,
          itemBuilder: (context, position) => _createCard(sucursal![position])),
    );
  }

  Widget _createCard(Sucursal sucursal) {
    return Container(
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
