import 'dart:js';
import 'package:flutter/material.dart';
import 'responsive.dart';
import 'globals.dart' as global;
import 'package:portfolio_website/Exten/hover_exten.dart';
import 'package:portfolio_website/Blogs/blog.dart';

class nav extends StatefulWidget {
  nav({Key? key}) : super(key: key);
  @override
  _navState createState() => _navState();
}

double animated_border_radius = 10;
double animated_width = 100;
double animated_height = 40;
bool is_clicked = false;

class _navState extends State<nav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //for logo
          logo_w(),
          if (!isMobile(context)) middle_w(context),
          if (!isMobile(context))
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    is_clicked = true;
                    animated_border_radius = 180;
                    animated_width = 40;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 2),
                  width: animated_width,
                  height: animated_height,
                  decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius:
                          BorderRadius.circular(animated_border_radius)),
                  child: Center(
                    child: is_clicked
                        ? Icon(Icons.email)
                        : Text(
                            "Email Me",
                            style: TextStyle(fontSize: 13),
                          ),
                  ),
                ),
              ),
            ),
          if (isMobile(context)) mobile_menu(),
        ],
      ),
    );
  }
}

Widget logo_w() {
  return Container(
    child: Text(
      "HS",
      style: TextStyle(color: Colors.white, fontSize: 20.0),
    ),
  );
}

Widget middle_w(BuildContext context) {
  return Container(
    child: Row(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 25),
              child: Text(
                "Home",
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ),
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Blogs()));
            },
            child: Container(
              margin: EdgeInsets.only(right: 25),
              child: Text(
                "Blogs",
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ),
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 25),
              child: Text(
                "Projects",
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ),
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 25),
              child: Text(
                "Services",
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget mobile_menu() {
  return GestureDetector(
    onTap: () {
      global.key.currentState!.openDrawer();
    },
    child: Container(
      child: Icon(
        Icons.menu,
        color: Colors.white,
      ),
    ),
  );
}
