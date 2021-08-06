import 'dart:js';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'globals.dart' as global;
import 'responsive.dart';

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
          !isMobile(context) ? web_logo_cont() : mobile_logo_cont(),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    is_clicked = true;
                    !isMobile(context)
                        ? animated_border_radius = 180
                        : animated_border_radius = 350;
                    animated_width = 40;
                  });
                },
                child: !isMobile(context) ? web_anim_cont() : mob_anim_cont()),
          )
        ],
      ),
    );
  }
}

Widget web_anim_cont() {
  return AnimatedContainer(
    duration: Duration(seconds: 2),
    width: animated_width,
    height: animated_height,
    decoration: BoxDecoration(
        color: Colors.green[300],
        borderRadius: BorderRadius.circular(animated_border_radius)),
    child: Center(
      child: is_clicked
          ? Icon(Icons.email)
          : Text(
              "Email Me",
              style: TextStyle(fontSize: 13),
            ),
    ),
  );
}

Widget mob_anim_cont() {
  return AnimatedContainer(
    duration: Duration(seconds: 2),
    width: 60,
    height: 40,
    decoration: BoxDecoration(
        color: Colors.green[300],
        borderRadius: BorderRadius.circular(animated_border_radius)),
    child: Center(
      child: is_clicked
          ? Icon(Icons.email)
          : Text(
              "Email Me",
              style: TextStyle(fontSize: 10),
            ),
    ),
  );
}

Widget web_logo_cont() {
  return Container(
    child: Text(
      "Harvinder Singh",
      style: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
    ),
  );
}

Widget mobile_logo_cont() {
  return Container(
    child: Text(
      "Harvinder Singh",
      style: TextStyle(
          color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),
    ),
  );
}
