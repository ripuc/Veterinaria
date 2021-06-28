import 'package:flutter/material.dart';
import 'package:veterinaria/screens/constant.dart';

class SearchCard extends StatelessWidget {
  final String itemOneImg;
  final String itemOneTitle;
  final String direccion;
  final String descripcion;
  final String calificacion;
  final Color itemOneBg;
  final Color itemOneColor;

  final String itemTwoImg;
  final String itemTwoTitle;
  final Color itemTwoBg;
  final Color itemTwoColor;

  const SearchCard({
    Key key,
    this.itemOneImg,
    this.itemOneTitle,
    this.direccion,
    this.descripcion,
    this.calificacion,
    this.itemOneBg,
    this.itemOneColor,
    this.itemTwoImg,
    this.itemTwoTitle,
    this.itemTwoBg,
    this.itemTwoColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screen = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          Flexible(
            child: Container(
              width: _screen.width,
              height: 140,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: _screen.width,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: textWhite,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3))
                          ]),
                      child: Center(
                        child: Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        itemOneTitle,
                                        style: appTitle,
                                      ),
                                    ),
                                    Container(
                                      child: Row(children: [
                                        Icon(
                                          Icons.directions,
                                          size: 15,
                                        ),
                                        Text(
                                          direccion,
                                          style: appSubTitle,
                                        ),
                                      ]),
                                    ),
                                    Container(
                                      child: Row(children: [
                                        Icon(
                                          Icons.call,
                                          size: 15,
                                        ),
                                        Text(
                                          descripcion,
                                          style: appSubTitle,
                                        ),
                                      ]),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            calificacion,
                                            style: appSubTitle,
                                          ),
                                          SizedBox(width: 8),
                                          Row(
                                            children: <Widget>[
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                              Icon(Icons.star,
                                                  color: Colors.yellow,
                                                  size: 15),
                                              Icon(Icons.star, size: 15),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(child: Container()),
                            Row(
                              children: [
                                Container(
                                  child: Image.asset(
                                    itemOneImg,
                                    height: 120,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
