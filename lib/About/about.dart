import 'package:flutter/material.dart';

class About extends StatefulWidget {
  About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

var str =
    "I am a Growing Tennage Flutter Devloper. Who Likes To Build Things By His Own . I Love To Devlop Apps And Website In A Very Simple Way And Also In A Complicated Way";

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        about_text(),
        SizedBox(
          height: 30,
        ),
        about_desc(),
      ],
    );
  }
}

Widget about_text() {
  return Container(
    child: Text(
      "About",
      style: TextStyle(
          color: Colors.white70, fontSize: 30, fontWeight: FontWeight.w900),
    ),
  );
}

Widget about_desc() {
  return Container(
      margin: EdgeInsets.fromLTRB(50, 0, 0, 50),
      width: 600,
      child: Text(
        str,
        style: TextStyle(color: Colors.white70, fontSize: 20),
      ));
}
