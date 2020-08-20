import 'package:fitter_admin/Admin_UI/admin_login.dart';
import 'package:fitter_admin/Admin_UI/walkthrough_3.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'walkthrough_1.dart';
import 'walkthrough_2.dart';

class walkthrough extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<walkthrough> {
  int currentIndexPage;
  int pageLength;

  @override
  void initState() {
    currentIndexPage = 0;
    pageLength = 3;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        PageView(
          children: <Widget>[
            walkthrough_1(),
            walkthrough_2(),
            walkthrough_3(),

          ],
          onPageChanged: (value) {
            setState(() => currentIndexPage = value);
          },
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.16,
          // left: MediaQuery.of(context).size.width * 0.35,
          child: Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.40),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: new DotsIndicator(
                position: currentIndexPage.toDouble(),
                dotsCount: pageLength,
                decorator: DotsDecorator(
                    activeColor: Colors.white, color: Colors.grey),
//                      numberOfDot: pageLength,
//                      position: currentIndexPage,
//                      dotColor: Colors.black87,
//                      dotActiveColor: Colors.amber
//
              ),
            ),
          ),
        ),

//
    Positioned(
      bottom: MediaQuery.of(context).size.height /40,
      child: Padding(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.25),
        child: GestureDetector(
          onTap: ()
          {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => admin_login()));
          },
          child: Container(
          width: 178.0,
          height: 50.0,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          gradient: LinearGradient(
          begin: Alignment(0.0, -1.0),
          end: Alignment(0.0, 1.0),
          colors: [const Color(0xff9847b7), const Color(0xffbc5dff)],
          stops: [0.0, 1.0],
          ),
          ),
            child: Center(child: Text("Skip",
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),),),
          ),
        ),
      ),
    ),

      ],
    ));
  }
}

