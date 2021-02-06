import 'package:flutter/material.dart';

class RoundedItem extends StatelessWidget{

  String imgUrl, assetUrl;
  double size;

  RoundedItem(String img, String title, double size){
    this.imgUrl = img;
    this.assetUrl = title;
    this.size = size;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.bottomCenter, //Para alinear los hijos abajo al centro
          children: <Widget>[
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110),
                border: Border.all(
                color: Colors.yellow,
                width: 2.0,
                ),
              ),
                      child: ClipOval( //Para redondear la imagen
                child: Image.network(imgUrl, fit: BoxFit.cover,)),
            ),
            Image.asset(assetUrl, width: size,),
          ],
        ),
        SizedBox(width: 10.0,),
      ],
    );
  }
}