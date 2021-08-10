import 'package:flutter/material.dart';
import 'package:portfolio_website/main.dart';
import 'package:portfolio_website/Navbar/responsive.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          blog_text(),
          SizedBox(
            height: 0,
          ),
          if (!isMobile(context) && !isTablet(context))
            web_blog()
          else
            mobile_blog(),
        ],
      ),
    );
  }
}

Widget web_blog() {
  return Container(
    margin: EdgeInsets.fromLTRB(200, 0, 0, 0),
    width: 1500,
    height: 550,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          children: [
            main_blog(),
            main_blog(),
            main_blog(),
            main_blog(),
          ],
        ),
      ],
    ),
  );
}

Widget mobile_blog() {
  return Container(
    margin: EdgeInsets.fromLTRB(230, 0, 230, 0),
    width: 1500,
    height: 550,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          children: [main_blog()],
        )
      ],
    ),
  );
}

Widget blog_text() {
  return Container(
    child: Text(
      "Blogs",
      style: TextStyle(
          color: Colors.white70, fontSize: 30, fontWeight: FontWeight.w900),
    ),
  );
}

Widget main_blog() {
  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      make_blog(),
      Container(
        width: 100,
        height: 50,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Icon(
          Icons.arrow_forward,
          color: Colors.black,
        ),
      )
    ],
  );
}

Widget make_blog() {
  return Container(
    width: 250,
    height: 350,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(50)),
    child: Column(
      children: [
        Container(
          child: Image.asset(
            'assest/Post.png',
            height: 190,
            width: 200,
          ),
        ),
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.green[300],
                  borderRadius: BorderRadius.circular(50)),
              width: 250,
              height: 160,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(60, 8, 50, 0),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "Top 5 Skills To Know In 2021",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 70, 20, 0),
              child: Text(
                  "The Top 5 SKills You Require To Make Some Money Online"),
            ),
          ],
        )
      ],
    ),
  );
}
