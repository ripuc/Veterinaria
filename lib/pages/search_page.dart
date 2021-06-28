import 'package:flutter/material.dart';
import 'package:veterinaria/screens/constant.dart';
import 'package:veterinaria/widgets/search_card.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(23, 37, 42, 0.1),
        title: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: ('Buscar Veterinaria'),
              suffixIcon: Icon(Icons.search, color: Colors.grey),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                SearchCard(
                  itemOneTitle: "Las Flores PEP",
                  direccion: "Av. Las palmeras 5366",
                  descripcion: "cel:.947564534",
                  calificacion: "calificación",
                  itemOneImg: "assets/images/card_1.png",
                  itemOneBg: appBackground,
                  itemOneColor: textBlack,
                ),
                SearchCard(
                  itemOneTitle: "DR.VET",
                  direccion: "Av. Las palmeras 5366",
                  descripcion: "cel:.947564534",
                  calificacion: "calificación",
                  itemOneImg: "assets/images/card_3.png",
                  itemOneBg: card3,
                  itemOneColor: textWhite,
                ),
                SearchCard(
                  itemOneTitle: "PEP COVIDA",
                  direccion: "Av. Las palmeras 5366",
                  descripcion: "cel:.947564534",
                  calificacion: "calificación",
                  itemOneImg: "assets/images/card_5.png",
                  itemOneBg: card5,
                  itemOneColor: textBlack,
                ),
                SearchCard(
                  itemOneTitle: "LOS OLIVOS PEP",
                  direccion: "Av. Las palmeras 5366",
                  descripcion: "cel:.947564534",
                  calificacion: "calificación",
                  itemOneImg: "assets/images/card_7.png",
                  itemOneBg: card7,
                  itemOneColor: textBlack,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
