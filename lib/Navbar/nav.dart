import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class nav extends StatefulWidget {
  nav({Key? key}) : super(key: key);

  @override
  _navState createState() => _navState();
}

class _navState extends State<nav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(100, 30, 100, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //for logo
          logo_w(),
          middle_w(),
          last_w()
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
          margin: EdgeInsets.only(right: 20),
          child: Text(
            "Home",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            "Blogs",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text(
            "Projects",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 20),
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
        width: 80,
        height: 40,
        child: Center(child: Text("Contact Me")),
      ));
}
