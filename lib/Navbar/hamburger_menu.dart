import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'mouse.dart';

class HamburgerMenu extends StatefulWidget {
  HamburgerMenu({Key? key}) : super(key: key);

  @override
  _HamburgerMenuState createState() => _HamburgerMenuState();
}

class _HamburgerMenuState extends State<HamburgerMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
          elevation: 16.0,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                    color: Colors.white10,
                    width: 1.0,
                    style: BorderStyle.solid)),
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(250, 0, 0, 0),
                    width: 45,
                    height: 45,
                    child: DrawerHeader(
                      child: Image.asset(
                        'assest/close.png',
                      ),
                    ),
                  ),
                ),
                ListTile(
                  mouseCursor: SystemMouseCursors.click,
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                Divider(
                  color: Colors.white24,
                ),
                ListTile(
                  mouseCursor: SystemMouseCursors.click,
                  title: Text(
                    'Blogs',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                Divider(
                  color: Colors.white24,
                ),
                ListTile(
                  mouseCursor: SystemMouseCursors.click,
                  title: Text(
                    'Projects',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
                Divider(
                  color: Colors.white24,
                ),
                ListTile(
                  mouseCursor: SystemMouseCursors.click,
                  title: Text(
                    'Services',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
