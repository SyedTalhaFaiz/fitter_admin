import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class walkthrough_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffe3e1e1),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage("images/splash_logo.png"),
                width: 200,
                height: 160,
              ),
              Text(
                "Ready to Learn",
                style: TextStyle(
                  fontSize: 32,
                  color: Color(0xff9847b7),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 60,
              ),
              Container(
                width: 300,
                height: 78,

                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ));
  }
}
