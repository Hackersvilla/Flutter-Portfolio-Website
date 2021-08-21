import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_website/Navbar/responsive.dart';

class Social extends StatefulWidget {
  const Social({Key? key}) : super(key: key);

  @override
  _SocialState createState() => _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        social_wid(),
        if (!isMobile(context) && !isTablet(context))
          web_make_social()
        else
          mobile_make_social()
      ],
    );
  }
}

Widget mobile_make_social() {
  return Container(
    margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
    width: 1500,
    height: 250,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          children: [
            linkedin_cards("Linked", "assest/linkedin.png", 20, 20),
            linkedin_cards("Instagram", "assest/insta-1.png", 30, 30),
            linkedin_cards("Facebook", "assest/facebook.png", 30, 30)
          ],
        ),
      ],
    ),
  );
}

Widget web_make_social() {
  return Container(
    margin: EdgeInsets.fromLTRB(230, 0, 230, 0),
    width: 1500,
    height: 250,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          children: [
            linkedin_cards("Linked", "assest/linkedin.png", 20, 20),
            linkedin_cards("Instagram", "assest/insta-1.png", 30, 30),
            linkedin_cards("Facebook", "assest/facebook.png", 30, 30)
          ],
        ),
      ],
    ),
  );
}

Widget linkedin_cards(String text1, logo, width_cont, height_cont) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 250,
      height: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.white),
      child: Column(
        children: [
          // for making the logo part
          Container(
            margin: EdgeInsets.fromLTRB(80, 50, 0, 0),
            child: Row(
              children: [
                Container(
                  child: Text(
                    text1,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  width: width_cont,
                  height: height_cont,
                  child: Image.asset(logo),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),

          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: Container(
                width: 170,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2.0),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                  "View Profile",
                  style: TextStyle(fontSize: 20),
                )),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget social_wid() {
  return Container(
    child: Text(
      "Social Links",
      style: TextStyle(
          color: Colors.white70, fontSize: 30, fontWeight: FontWeight.w900),
    ),
  );
}
