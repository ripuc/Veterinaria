import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veterinaria/auth/registers.dart';
import 'package:veterinaria/screens/background_painter.dart';

class LoginPage extends StatelessWidget {
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
                  Login(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Login extends StatelessWidget {
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
              Center(
                child: Image(
                  image: AssetImage('assets/images/logovet.png'),
                  width: 310,
                  height: 155,
                  fit: BoxFit.contain,
                ),
              ),
              Center(
                child: Text('PEP MEDIC',
                    style: GoogleFonts.mateSc(
                        color: Color.fromRGBO(23, 37, 42, 1),
                        fontSize: 35,
                        fontWeight: FontWeight.bold)),
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
              Container(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                child: TextButton(
                  child: Text('Registrarse'),
                  style: TextButton.styleFrom(
                      primary: Colors.blueGrey,
                      textStyle: TextStyle(color: Colors.black, fontSize: 15)),
                  onPressed: () => Navigator.pushNamed(
                    context,
                    'register',
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
                    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                    shape: StadiumBorder(),
                    color: Color.fromRGBO(23, 37, 42, 1),
                    textColor: Colors.white,
                    child: Text(
                      'Login',
                      style: GoogleFonts.mateSc(fontSize: 20),
                    ),
                    onPressed: () => Navigator.pushNamed(context, 'page'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
