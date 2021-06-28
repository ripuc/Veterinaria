import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veterinaria/screens/background_painter.dart';
import 'package:veterinaria/screens/constant.dart';

class RegistersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: CustomPaint(
              painter: BackgroundPainter(),
            ),
          ),
          SafeArea(
            bottom: false,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Register(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: size.height / 6,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3))
                    ]),
                child: Column(
                  children: [
                    Text('Registrar',
                        style: GoogleFonts.mateSc(
                            color: Color.fromRGBO(23, 37, 42, 1),
                            fontSize: 35,
                            fontWeight: FontWeight.bold)),
                    TextField(
                      decoration: InputDecoration(
                          hintText: ('Nombres'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: ('Apellidos'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: ('Email'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    new TextField(
                      decoration: InputDecoration(
                        hintText: ('Password'),
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        width: size.width,
                        child: MaterialButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 25, horizontal: 10),
                          shape: StadiumBorder(),
                          color: Color.fromRGBO(23, 37, 42, 1),
                          textColor: Colors.white,
                          child: Text(
                            'Aceptar',
                            style: GoogleFonts.mateSc(fontSize: 20),
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, 'login'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
