import 'package:flutter/material.dart';

Widget menuLineal() {
  return Container(
    height: 80.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Category(
          image_location: 'assets/img/bread.png',
          image_caption: 'Salado',
        ),
        Category(
          image_location: 'assets/img/cupcake.png',
          image_caption: 'Dulce',
        ),
        Category(
          image_location: 'assets/img/caked.png',
          image_caption: 'Pasteles',
        ),
        Category(
          image_location: 'assets/img/cake.png',
          image_caption: 'Especialidades',
        ),
      ],
    ),
  );
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({required this.image_location, required this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 87.0,
          child: ListTile(
            title: Image(
              image: AssetImage(image_location),
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            ),
          ),
        ),
      ),
    );
  }
}
