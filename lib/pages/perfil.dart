import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
              bottom: false,
              child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Contenido()],
                  )))
        ],
      ),
    );
  }
}

class Contenido extends StatelessWidget {
  const Contenido({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Center(
                child: Image(
                  image: AssetImage('assets/images/perfil.png'),
                  width: 180,
                  height: 300,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.grey),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Bienvenido Juan',
                        style: GoogleFonts.mateSc(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(height: 10),
                    Text('Empresa Veterinaria PEP',
                        style: GoogleFonts.mateSc(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Text('RUC: 19342534234',
                        style: GoogleFonts.mateSc(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    Text('Ubicación: Av. las palmeras',
                        style: GoogleFonts.mateSc(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
