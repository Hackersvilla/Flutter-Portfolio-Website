import 'dart:js';
import 'package:flutter/material.dart';
import 'responsive.dart';
import 'globals.dart' as global;

class nav extends StatefulWidget {
  nav({Key? key}) : super(key: key);
  @override
  _navState createState() => _navState();
}

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
          if (!isMobile(context)) middle_w(),
          if (!isMobile(context)) last_w(),
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

Widget middle_w() {
  return Container(
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 25),
          child: Text(
            "Home",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 25),
          child: Text(
            "Blogs",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 25),
          child: Text(
            "Projects",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 25),
          child: Text(
            "Services",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    ),
  );
}

Widget last_w() {
  return Container(
      decoration: BoxDecoration(
          color: Colors.green[300], borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: 100,
        height: 40,
        child: Center(
            child: Text(
          "Contact Me",
          style: TextStyle(fontSize: 13),
        )),
      ));
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
