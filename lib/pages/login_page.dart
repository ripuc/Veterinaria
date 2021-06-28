import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _Header(),
                _Content(),
              ],
            )),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: 15),
        Row(children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1), spreadRadius: 1)
                ]),
            width: (size.width / 2) - 30,
            height: 50,
            child: Icon(
              FontAwesomeIcons.facebookF,
              color: Colors.blue[900],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2), spreadRadius: 1)
                ]),
            width: (size.width / 2) - 30,
            height: 50,
            child: Icon(
              FontAwesomeIcons.google,
              color: Colors.red[900],
            ),
          ),
        ]),
        SizedBox(height: 40),
        TextField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              labelText: 'USUARIO'),
        ),
        SizedBox(height: 25),
        TextField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              labelText: 'CONTRASEÑA'),
        ),
        SizedBox(height: 20),
        GestureDetector(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Center(
                child: Text('Ingresar',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18))),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: MediaQuery.of(context).size.width),
        SizedBox(height: 20),
        Center(
          child: Text(
            'PET',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.teal),
          ),
        ),
        Center(
          child: Text(
            'MEDIC',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.teal),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
