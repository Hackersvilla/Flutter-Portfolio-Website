import 'package:flutter/material.dart';
import 'package:portfolio_website/Navbar/responsive.dart';
import 'package:portfolio_website/Navbar/globals.dart' as global;

class EmailC extends StatefulWidget {
  const EmailC({Key? key}) : super(key: key);

  @override
  _EmailCState createState() => _EmailCState();
}

class _EmailCState extends State<EmailC> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: global.isVisible,
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      child: Container(
        width: 1450,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            !isMobile(context) & !isTablet(context)
                ? web_email_c()
                : mob_email_c()
          ],
        ),
      ),
    );
  }
}

Widget web_email_c() {
  return Stack(
    alignment: AlignmentDirectional.topEnd,
    children: [
      Container(
        margin: EdgeInsets.only(top: 10, left: 0),
        width: 200,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: null,
      ),
      Container(
        margin: EdgeInsets.only(right: 10),
        child: Image.asset(
          'assest/bleach.png',
          width: 20,
          height: 20,
        ),
      ),
    ],
  );
}

Widget mob_email_c() {
  return Stack(
    alignment: AlignmentDirectional.topEnd,
    children: [
      Container(
        margin: EdgeInsets.only(top: 10, right: 50),
        width: 170,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: null,
      ),
      Container(
        margin: EdgeInsets.only(right: 60),
        child: Image.asset(
          'assest/bleach.png',
          width: 20,
          height: 20,
        ),
      ),
    ],
  );
}
