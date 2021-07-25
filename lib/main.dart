import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Navbar/nav.dart';
import 'Navbar/responsive.dart';
import 'Navbar/hamburger_menu.dart';
import 'Navbar/globals.dart' as global;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.quicksand().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: global.key,
      drawer: isMobile(context) ? HamburgerMenu() : null,
      backgroundColor: Colors.black,
      body: Column(
        children: [nav()],
      ),
    );
  }
}
