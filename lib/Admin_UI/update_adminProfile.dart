import 'package:fitter_admin/Admin_UI/forgot_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigation_bar.dart';
class updateadmin_profile extends StatefulWidget {
  @override
  _admin_loginState createState() => _admin_loginState();
}

class _admin_loginState extends State<updateadmin_profile> {

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
        title:  Image.asset("images/splash_logo.png",
          scale: 10,),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Color(0xff8C04FF), //change your color here
        ),
        backgroundColor:Color(0xffe3e1e1),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: height/60,
                ),

                Center(
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff9847b7),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(
                  height: height/60,
                ),

                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/admin/pic1.jpeg"),
                    radius: 48,
                  ),
                ),

                Center(
                  child: Text(
                    "Luqman Asif",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff9847b7),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "luqman.edu303@gmail.com",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
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
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.5),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Row(
                    children: <Widget>[
                      new Padding(
                        padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                        child: Icon(
                          Icons.email,
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: 30.0,
                        width: 1.0,
                        color: Colors.grey.withOpacity(0.5),
                        margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                      ),
                      new Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'luqman.edu303@gmail.com',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      )
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    "New Password",
                    style: TextStyle(color: Colors.grey, fontSize: 16.0),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.5),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Row(

                    children: <Widget>[
                      new Padding(
                        padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                        child: Icon(
                          Icons.lock_open,
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: 30.0,
                        width: 1.0,
                        color: Colors.grey.withOpacity(0.5),
                        margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                      ),

                      new Expanded(
                        child: TextField(
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye),
                              iconSize: 18,
                              color: Colors.grey,
                              onPressed: _toggle,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 0),
                            hintText: 'enter new password',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    "Confirm New Password",
                    style: TextStyle(color: Colors.grey, fontSize: 16.0),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.5),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Row(
                    children: <Widget>[
                      new Padding(
                        padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                        child: Icon(
                          Icons.lock_open,
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: 30.0,
                        width: 1.0,
                        color: Colors.grey.withOpacity(0.5),
                        margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                      ),
                      new Expanded(
                        child: TextField(
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye),
                              iconSize: 18,
                              color: Colors.grey,
                              onPressed: _toggle,
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 0),
                            border: InputBorder.none,
                            hintText: 'confirm password',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: height/60,
                ),

                Center(
                  child: GestureDetector(
                    onTap: ()
                    {
//                            Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context) => navigation_bar()));
                    },
                    child: Container(
                      width: width/1.2,
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
                      child: Center(child: Text("Update",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),),),
                    ),
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
