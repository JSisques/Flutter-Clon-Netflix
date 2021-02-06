import 'package:clon_netflix/widgets/navBar.dart';
import 'package:flutter/material.dart';

class MainCartel extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        header(),
        infoSerie(),
        buttons(),
      ],
    );
  }

  Widget header() {
    return Stack(
          children: <Widget>[
            Image.network("https://static1.abc.es/media/play/2020/01/29/elite-netflix-k4LB--1200x630@abc.jpg",
            height: 350.0,
            fit: BoxFit.cover, //Para que la imagen se adapte al contenedor (hace zoom)
            ),
            Container(
              width: double.infinity, //Para que ocupe todo el ancho
              height: 350.0, 
              decoration: BoxDecoration( //Para hacer un degradado lineal
                gradient: LinearGradient(
                  begin: Alignment.center, //Para que empiece a degradarse en el centro
                  end: Alignment.bottomCenter, //Para que acabe el degradado abajo
                  colors: <Color>[ //Los colores con los qeu queremos hacer el degradado
                    Colors.black38,
                    Colors.black,
                  ]
                )
              ), 
              ),
            SafeArea(
              child: NavBar()
              ),
          ],
        );
  }

  Widget infoSerie(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Telenovela", style: TextStyle(
          color: Colors.white,
          fontSize: 10.0 ),),

        SizedBox(width: 6.0,),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0,),
        SizedBox(width: 6.0,),

        Text("Suspense insostenible", style: TextStyle(
          color: Colors.white,
          fontSize: 10.0 ),),
        
        SizedBox(width: 6.0,),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0,),
        SizedBox(width: 6.0,),

        Text("Suspense", style: TextStyle(
          color: Colors.white,
          fontSize: 10.0 ),),

        SizedBox(width: 6.0,),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0,),
        SizedBox(width: 6.0,),

        Text("Adolescente", style: TextStyle(
          color: Colors.white,
          fontSize: 10.0 ),),
      ],
    );
  }

  Widget buttons(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0), //Para colocar un padding arriba y abajo
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton(
            onPressed: null, 
            child: Column(
              children: <Widget>[
                Icon(Icons.check, color: Colors.white,),
                Text("Mi lista", style: TextStyle(
                  color: Colors.white, 
                  fontSize: 10.0),),
              ],
            ),
            ),
          
          FlatButton.icon(
            label: Text("Reproducir"),
            onPressed: (){}, 
            color: Colors.white,
            icon: Icon(
              Icons.play_arrow,
            ),
            ),
            
          FlatButton(
            onPressed: null, 
            child: Column(
              children: <Widget>[
                Icon(Icons.info_outline, color: Colors.white,),
                Text("Información", style: TextStyle(
                  color: Colors.white, 
                  fontSize: 10.0),),
              ],
            ),
            ),
        ],
      ),
    );
  }

  
}