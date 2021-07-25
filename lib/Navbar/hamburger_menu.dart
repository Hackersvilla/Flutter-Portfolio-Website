import 'package:flutter/material.dart';

class HamburgerMenu extends StatefulWidget {
  HamburgerMenu({Key? key}) : super(key: key);

  @override
  _HamburgerMenuState createState() => _HamburgerMenuState();
}

class _HamburgerMenuState extends State<HamburgerMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: Drawer(
        elevation: 16.0,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(child: Image.asset('assest/close.png')),
            ListTile(
              title: const Text('Home'),
            ),
            ListTile(
              title: const Text('Blogs'),
            ),
            ListTile(
              title: const Text('Projects'),
            ),
            ListTile(
              title: const Text('Services'),
            ),
          ],
        ),
      ),
    );
  }
}
