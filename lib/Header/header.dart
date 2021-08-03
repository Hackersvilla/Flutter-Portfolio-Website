import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio_website/Navbar/responsive.dart';

class Header extends StatefulWidget {
  Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          if (!isMobile(context)) text_wid(),
          if (!isMobile(context)) second_wid(),
          if (isMobile(context)) mobile_text_wid(),
          if (isMobile(context)) mobile_second_wid(),
          SizedBox(
            height: 100,
          ),
          button_wid()
        ],
      ),
    );
  }
}

Widget text_wid() {
  return Container(
    child: Text(
      "Software",
      style: TextStyle(color: Colors.white, fontSize: 80),
    ),
  );
}

Widget second_wid() {
  return Container(
    child: Text(
      "Devloper",
      style: TextStyle(color: Colors.greenAccent, fontSize: 80),
    ),
  );
}

Widget button_wid() {
  return Container(
    width: 100,
    height: 50,
    decoration: BoxDecoration(
        color: Colors.green[300], borderRadius: BorderRadius.circular(30)),
    child: Icon(
      Icons.arrow_forward,
      color: Colors.black,
    ),
  );
}

Widget mobile_text_wid() {
  return Container(
    child: Text(
      "Software",
      style: TextStyle(color: Colors.white, fontSize: 60),
    ),
  );
}

Widget mobile_second_wid() {
  return Container(
    child: Text(
      "Devloper",
      style: TextStyle(color: Colors.green[300], fontSize: 60),
    ),
  );
}
