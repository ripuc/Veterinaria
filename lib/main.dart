import 'package:flutter/material.dart';
import 'package:veterinaria/auth/auth.dart';
import 'package:veterinaria/auth/registers.dart';
import 'package:veterinaria/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'login',
      routes: {
        'login': (_) => LoginPage(),
        'page': (_) => Inicio(),
        'register': (_) => RegistersPage(),
      },
    );
  }
}
