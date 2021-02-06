import 'package:clon_netflix/app/app.dart';
import 'package:clon_netflix/widgets/filmCartel.dart';
import 'package:clon_netflix/widgets/mainCartel.dart';
import 'package:clon_netflix/widgets/roundedItem.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  BuildContext context;

    // backing data
  var advances = [
    RoundedItem("https://i.pinimg.com/originals/37/46/b3/3746b33e879cca0e7c80611811f44318.jpg", "assets/img/avengers_logo.png", 125),
    RoundedItem("https://www.muycomputer.com/wp-content/uploads/2019/06/Dark-1000x600.jpg", "assets/img/dark_logo.png", 100),
    RoundedItem("https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2020/10/gambito-dama-cartel-2119425.jpg?itok=hxvg_n8g", "assets/img/gambito_de_dama_logo.png", 125),
    RoundedItem("https://ic.c4assets.com/brands/derry-girls/7354f462-d589-421d-950b-5d6e75692036.jpg?interpolation=progressive-bicubic&output-format=jpeg&output-quality=90{&resize}", "assets/img/derry_girls_logo.png", 100),
    RoundedItem("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/black-mirror-1559904387.jpg", "assets/img/black_mirror_logo.png", 100)
  ];

  var films1 = [
    FilmCartel("https://www.tonica.la/__export/1589999061515/sites/debate/img/2020/05/20/the-flash-portada.jpg_1902800913.jpg"),
    FilmCartel("https://i.guim.co.uk/img/media/8c227e8b9683c0a0c683ef7278fd8524bd84ade1/0_138_3056_1833/master/3056.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=3cbdf2742a826aab979f8da051c2d986"),
    FilmCartel("https://www.ecestaticos.com/image/clipping/f8769495419b54441e074b2d901ffdb8/padre-de-familia-saltara-al-cine-con-una-mezcla-de-animacion-y-accion-real.jpg"),
    FilmCartel("https://hipertextual.com/files/2018/01/breaking_bad_vince_gilligan_amc.jpg"),
    FilmCartel("https://www.tonica.la/__export/1594485405544/sites/debate/img/2020/07/11/the-office-season2-portada.jpg_423682103.jpg"),
    FilmCartel("https://aws.revistavanityfair.es/prod/designs/v1/assets/785x589/181790.jpg")
  ];

  var films2 = [
    FilmCartel("https://www.tonica.la/__export/1589999061515/sites/debate/img/2020/05/20/the-flash-portada.jpg_1902800913.jpg"),
    FilmCartel("https://i.guim.co.uk/img/media/8c227e8b9683c0a0c683ef7278fd8524bd84ade1/0_138_3056_1833/master/3056.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=3cbdf2742a826aab979f8da051c2d986"),
    FilmCartel("https://www.ecestaticos.com/image/clipping/f8769495419b54441e074b2d901ffdb8/padre-de-familia-saltara-al-cine-con-una-mezcla-de-animacion-y-accion-real.jpg"),
    FilmCartel("https://hipertextual.com/files/2018/01/breaking_bad_vince_gilligan_amc.jpg"),
    FilmCartel("https://www.tonica.la/__export/1594485405544/sites/debate/img/2020/07/11/the-office-season2-portada.jpg_423682103.jpg"),
    FilmCartel("https://aws.revistavanityfair.es/prod/designs/v1/assets/785x589/181790.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          MainCartel(),
          horizontalList(),
          FilmList("Series sobre viajes en el tiempo",films1),
          FilmList("Estrenos",films2),
        ],
      ),
    );

  }

  Widget horizontalList(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), //Padings
          child: Text("Avances", 
            textAlign: TextAlign.left, 
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),),
        ),
        Container(
                height: 110,
                child: AdvanceListView(context, advances),
                ),
      ],
    );
  }

  Widget AdvanceListView(BuildContext context, var list) {

  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: list.length,
    itemBuilder: (context, index) {
      return list[index];
    },
  );
  }

  Widget FilmList(String title, var list){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0), //Padings
          child: Text(title, 
            textAlign: TextAlign.left, 
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),),
        ),
        Container(
                height: 150,
                child: AdvanceListView(context, list),
              ),
      ],
    );
  }
}