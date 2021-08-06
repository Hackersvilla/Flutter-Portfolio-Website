
import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  Projects({Key? key}) : super(key: key);

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("Projects" , style: TextStyle(color: Colors.white70 , fontSize: 30),),
    );
  }
}