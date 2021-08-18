import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/email_cont/Email_cont.dart';
import 'Navbar/nav.dart';
import 'Navbar/responsive.dart';
import 'Navbar/hamburger_menu.dart';
import 'Navbar/globals.dart' as global;
import 'Header/header.dart';
import 'Blogs/blog.dart';
import 'About/about.dart';
import 'Skills/skills.dart';
import 'Social/social.dart';

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
      drawerEnableOpenDragGesture: false,
      key: global.key,
      drawer: isMobile(context) ? HamburgerMenu() : null,
      backgroundColor: Colors.black,
      body: Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Column(
            children: [
              nav(),
              SizedBox(
                height: 10,
              ),
              EmailC(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      Header(),
                      SizedBox(
                        height: 155,
                      ),
                      About(),
                      SizedBox(
                        height: 100,
                      ),
                      Blogs(),
                      SizedBox(
                        height: 15,
                      ),
                      Skills(),
                      SizedBox(
                        height: 15,
                      ),
                      Social()
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
