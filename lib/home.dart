import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:veterinaria/pages/home_page.dart';
import 'package:veterinaria/pages/perfil.dart';
import 'package:veterinaria/pages/search_page.dart';
import 'package:veterinaria/screens/constant.dart';

void main() {
  runApp(Inicio());
}

class Inicio extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet App UI',
      theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
          scaffoldBackgroundColor: appBackground),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<BottomNavigationBarItem> itemsTab = [
    BottomNavigationBarItem(
      icon: Icon(LineIcons.home),
      title: Padding(
        padding: EdgeInsets.only(top: 12),
        child: Text("Inicio",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(LineIcons.search),
      title: Padding(
        padding: EdgeInsets.only(top: 12),
        child: Text("Buscar",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle),
      title: Padding(
        padding: EdgeInsets.only(top: 12),
        child: Text("Perfil",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
      ),
    ),
  ];
  int selectedIndex = 0;
  List<Widget> pages = [
    HomePage(),
    SearchPage(),
    PerfilPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          items: itemsTab,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primary,
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }

  Widget getBody() {
    return pages.elementAt(selectedIndex);
  }
}
