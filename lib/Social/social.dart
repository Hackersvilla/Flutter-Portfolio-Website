
import 'package:flutter/material.dart';
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
    height: 550,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          children: [
            make_cards(),
            make_cards(),
            make_cards(),
            make_cards(),
            make_cards()
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
    height: 550,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          children: [
            make_cards(),
            make_cards(),
            make_cards(),
            make_cards(),
            make_cards()
          ],
        ),
      ],
    ),
  );
}

Widget make_cards() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 250,
      height: 350,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.white),
      child: Column(
        children: [

          // for making the logo part
          Container(
            margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
            child: Row(
              children: [
                Container(
                  child: Text("Linked", style: TextStyle(color: Colors.blue, fontSize: 20 , fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  width: 20,
                  height: 20,
                  child: Image.asset('assest/linkedin.png'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ClipOval(
            child: Image.asset('assest/face.jpg' , height: 100,width: 100,fit: BoxFit.cover
              ,),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 170,
            height: 45,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue , width: 2.0),color: Colors.white , borderRadius: BorderRadius.circular(20) , ),
            child: Center(child: Text("View Profile"  , style: TextStyle(fontSize: 20),)),
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
