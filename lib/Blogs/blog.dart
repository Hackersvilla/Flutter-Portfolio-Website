import 'package:flutter/material.dart';

class Blogs extends StatefulWidget {
  Blogs({Key? key}) : super(key: key);

  @override
  _BlogsState createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [blog_text()],
      ),
    );
  }
}

Widget blog_text() {
  return Container(
    child: Text(
      "Blogs",
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
      ),
    ),
  );
}
