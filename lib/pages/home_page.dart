import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veterinaria/screens/constant.dart';
import 'package:veterinaria/widgets/dog_card.dart';
import 'package:veterinaria/widgets/walk_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                Center(
                  child: Text("PEP MEDIC",
                      style: GoogleFonts.mateSc(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange[600])),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: textWhite.withOpacity(0.4),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 8,
                            offset: Offset(3, 1))
                      ]),
                  child: Text(
                    "Dedicados a la Medicina y Cirugía de Mascotas por 19 años consecutivos. Contamos con los instrumentos y Equipos para realizar los diagnósticos, las Terapias y las Cirugías más complejas.",
                    style: contentBlack,
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 50),
                DogCard(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "ATENCION".toUpperCase(),
                      style: TextStyle(fontSize: 17),
                    ),
                    Text("Ver Todos", style: TextStyle(fontSize: 17)),
                  ],
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      WalkCard(
                        imgScr: "assets/images/card_dog_1.png",
                        title: "Chekeo Medico",
                        location: "San Isidro, Lima",
                        member: "20 miembros",
                        orgBy: "Medico Lucas ",
                      ),
                      WalkCard(
                        imgScr: "assets/images/card_dog_2.png",
                        title: "Vacunas desparasitario",
                        location: "Barranco, Lima",
                        member: "7 members",
                        orgBy: "Medico Juan",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
