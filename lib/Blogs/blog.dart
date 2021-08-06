import 'package:flutter/material.dart';
import 'package:portfolio_website/main.dart';

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
            height: 50,
          ),
          Container(
            width: 1500,
            height: 500,
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget blog_text() {
  return Container(
    child: Text(
      "Blogs",
      style: TextStyle(color: Colors.white70, fontSize: 30),
    ),
  );
}

Widget main_blog() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 250,
      height: 350,
      decoration: BoxDecoration(
          color: Colors.green[300], borderRadius: BorderRadius.circular(50)),
      child: null,
    ),
  );
}
