import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Header extends StatefulWidget {
  Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          text_wid(),
        ],
      ),
    );
  }
}

Widget text_wid() {
  return Container(
    child: null,
  );
}
