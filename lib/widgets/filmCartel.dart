import 'package:flutter/material.dart';

class FilmCartel extends StatelessWidget{

  String url;

  FilmCartel(String url){
    this.url = url;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Image.network(
        url,
        width: 100,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}