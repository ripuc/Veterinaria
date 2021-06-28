import 'package:flutter/material.dart';
import 'package:veterinaria/screens/constant.dart';

class DogCard extends StatelessWidget {
  const DogCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      child: Stack(children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.orange[600],
              borderRadius: BorderRadius.circular(15),
              boxShadow: [BoxShadow(color: primary, blurRadius: 0.5)],
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(left: 80, right: 10),
                child: Text(
                  "Atencion de Lunes a viernes 8 am a 6pm, Cel:.965654324",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        Container(
          child: Image.asset("assets/images/lolo_dog.png"),
        )
      ]),
    );
  }
}
