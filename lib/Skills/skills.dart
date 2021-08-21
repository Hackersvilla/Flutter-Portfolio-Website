import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:portfolio_website/Navbar/responsive.dart';

class Skills extends StatefulWidget {
  Skills({Key? key}) : super(key: key);

  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        skill_text(),
        SizedBox(
          height: 30,
        ),
        if (!isMobile(context) && !isTablet(context))
          web_skill_indigator()
        else
          mobile_skill_indigator(),
      ],
    );
  }
}

Widget skill_text() {
  return Container(
    child: Text(
      "Skills",
      style: TextStyle(
          color: Colors.white70, fontSize: 30, fontWeight: FontWeight.w900),
    ),
  );
}

Widget web_skill_indigator() {
  return Container(
    margin: EdgeInsets.fromLTRB(230, 0, 230, 0),
    width: 1500,
    height: 550,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          children: [
            skill_container("Flutter", Colors.green[900], r"90%",
                r"* App Devlopment", r"* Web Devlopment"),
            skill_container("Python", Colors.orange[600], r"93%",
                r"* Data Structures", r"* Graph Algorithms"),
            skill_container("Graphic Designing", Colors.purple[600], r"80%",
                r"* Logo Design", r"* Post Design"),
            skill_container("UI/UX Design", Colors.indigo, r"75%",
                r"* App Design", r"* Web Design"),
          ],
        )
      ],
    ),
  );
}

Widget mobile_skill_indigator() {
  return Container(
    margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
    width: 1500,
    height: 550,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          children: [
            skill_container("Flutter", Colors.green[900], r"90%",
                r"* App Devlopment", r"* Web Devlopment"),
            skill_container("Python", Colors.orange[600], r"93%",
                r"* Data Structures", r"* Graph Algorithms"),
            skill_container("Graphic Designing", Colors.purple[600], r"80%",
                r"* Logo Design", r"* Post Design"),
            skill_container("Android", Colors.pink[300], r"70%",
                r"* Ui Devlopment", r"* Backend Devlopment"),
            skill_container("UI/UX Design", Colors.indigo, r"75%",
                r"* App Design", r"* Web Design"),
          ],
        )
      ],
    ),
  );
}

Widget skill_container(String title, var percentcolor, String percentage,
    String desc1, String desc2) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 250,
      height: 350,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(50)),
      child: Column(
        children: [
          //for text
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w300),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //for progress bar
          CircularPercentIndicator(
            radius: 150.0,
            lineWidth: 12.0,
            percent: 0.9,
            progressColor: percentcolor,
            animation: true,
            center: Container(
              child: Text(
                percentage,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),

          SizedBox(
            height: 25,
          ),

          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            width: 200,
            height: 100,
            child: Column(
              children: [
                Container(
                  child: Text(
                    desc1,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    desc2,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
