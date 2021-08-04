import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Navbar/nav.dart';
import 'Navbar/responsive.dart';
import 'Navbar/hamburger_menu.dart';
import 'Navbar/globals.dart' as global;
import 'Header/header.dart';
import 'Blogs/blog.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

void main() {
  runApp(MyApp());
}

final scrollDirection = Axis.vertical;
List<Widget> list = [nav(), Header(), Blogs()];

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
  void initState() {
    super.initState();
    global.controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: scrollDirection);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      key: global.key,
      drawer: isMobile(context) ? HamburgerMenu() : null,
      backgroundColor: Colors.black,
      body: Container(
          margin: EdgeInsets.only(bottom: 30),
          child: ListView(
            scrollDirection: scrollDirection,
            controller: global.controller,
            children: [
              AutoScrollTag(
                key: ValueKey(list),
                controller: global.controller,
                index: list.indexOf(nav()),
                child: Column(
                  children: [
                    nav(),
                    SizedBox(
                      height: 150,
                    ),
                    Header(),
                    SizedBox(
                      height: 155,
                    ),
                    Blogs()
                  ],
                ),
              )
            ],
          )),
    );
  }
}
