import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'globals.dart' as global;
import 'responsive.dart';

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
          !isMobile(context) ? web_logo_cont() : mobile_logo_cont(),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
                onTap: () {
                  print("Tapped");
                  setState(() {
                    global.isVisible = !global.isVisible;
                  });
                },
                child: !isMobile(context) ? web_anim_cont() : mob_anim_cont()),
          ),
        ],
      ),
    );
  }
}

Widget web_anim_cont() {
  return Container(
    width: 60,
    height: 40,
    decoration: BoxDecoration(
        color: Colors.green[300], borderRadius: BorderRadius.circular(50)),
    child: Center(child: Icon(Icons.email)),
  );
}

Widget mob_anim_cont() {
  return Container(
    width: 60,
    height: 40,
    decoration: BoxDecoration(
        color: Colors.green[300], borderRadius: BorderRadius.circular(50)),
    child: Center(child: Icon(Icons.email)),
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
