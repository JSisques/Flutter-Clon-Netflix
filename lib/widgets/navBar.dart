import 'package:flutter/material.dart';

class NavBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget> [
        Image.asset('assets/img/netflix_logo.png',
         width: 30.0,),
        Text("Programas", style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,),
          ),
        Text("Peliculas",style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,),
          ),
        Text("Mi lista", style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,),
          ),        
      ],
    );
  }
}