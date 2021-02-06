

import 'package:clon_netflix/view/homeScreen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context),
      home: HomeScreen(),
    );
  }
}