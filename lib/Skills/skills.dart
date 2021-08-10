import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
          height: 100,
        ),
        skill_indigator()
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

Widget skill_indigator() {
  return Container(
    margin: EdgeInsets.fromLTRB(230, 0, 230, 0),
    width: 1500,
    height: 550,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          children: [
            skill_container(),
            skill_container(),
            skill_container(),
            skill_container(),
            skill_container(),
            skill_container()
          ],
        )
      ],
    ),
  );
}

Widget skill_container() {
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
              "Flutter",
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
            progressColor: Colors.green,
            animation: true,
            center: Container(
              child: Text(
                r"90%",
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
                    r"* App Devlopment",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    r"* Web Devlopment",
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
