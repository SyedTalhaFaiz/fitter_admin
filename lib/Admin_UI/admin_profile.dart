import 'package:fitter_admin/Admin_UI/forgot_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigation_bar.dart';
class admin_profile extends StatefulWidget {
  @override
  _admin_loginState createState() => _admin_loginState();
}

class _admin_loginState extends State<admin_profile> {

  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffe3e1e1),

    appBar: AppBar(
      iconTheme: IconThemeData(
        color: Color(0xff9847b7), //change your color here
      ),
      title: Text(
        "Profile",
        style: TextStyle(
//          fontSize: 22,
          color: Color(0xff9847b7),
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Color(0xffe3e1e1),
      elevation: 2,
    ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: height/20,
            ),





            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/admin/pic1.jpeg"),
                radius: 48,
              ),
            ),

            Divider(),



            SizedBox(
              height: height/60,
            ),


            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(
                "Name",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(
                "Luqman Asif",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff9847b7),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            SizedBox(
              height: height/60,
            ),


            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(
                "Email",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(
                "luqman.edu303@gmail.com",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff9847b7),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            SizedBox(
              height: height/60,
            ),




          ],
        ),
      ),
    );
  }
}
