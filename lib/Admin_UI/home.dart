import 'package:fitter_admin/Admin_UI/admin_login.dart';
import 'package:fitter_admin/Admin_UI/admin_profile.dart';
import 'package:fitter_admin/Admin_UI/admin_user_profile.dart';
import 'package:fitter_admin/Admin_UI/users.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

import 'admin_calendar.dart';
import 'update_adminProfile.dart';
import 'workers.dart';

class home extends StatefulWidget {
  @override
  _admin_loginState createState() => _admin_loginState();
}

class _admin_loginState extends State<home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        title:   Image.asset("images/splash_logo.png",
          scale: 8,),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Color(0xffe3e1e1), //change your color here
        ),
        backgroundColor:Color(0xffe3e1e1),
        elevation: 0,
      ),
        backgroundColor: const Color(0xffe3e1e1),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Container(
                height: height/1.9,
                width: width/1.1,
                padding: EdgeInsets.symmetric( horizontal: 25, vertical: 20),
//              width: MediaQuery.of(context).size.width - 30.0,
//              height: MediaQuery.of(context).size.height - 50.0,
                child: GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 15.0,
                  childAspectRatio: 0.8,
                  children: <Widget>[
                    _buildCard('Users',  'images/admin/users.png', context,
                            () {

                          Navigator.push(
                            context,
                            EnterExitRoute(
                                exitPage: widget, enterPage: users()
                            ),
                          );
                        }),
                    _buildCard('Workers',  'images/admin/workers.png', context,
                            () {
                         Navigator.push(
                            context,
                            EnterExitRoute(
                                exitPage: widget, enterPage: worker()
                            ),
                          );
                        }
                    ),
                    _buildCard('My Profile',  'images/admin/profile.png', context,
                            () {

                         Navigator.push(
                            context,
                            EnterExitRoute(
                                exitPage: widget, enterPage: admin_profile()
                            ),
                          );
                        }
                    ),
                    _buildCard('Logout',  'images/admin/logout.png', context,
                            () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  // the new route
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => admin_login(),
                                  ),

                                  // this function should return true when we're done removing routes
                                  // but because we want to remove all other screens, we make it
                                  // always return false
                              (Route route) => false,
                              );
                        }
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


Widget _buildCard(String name, String imgPath,context, Function onTap) {
  return Padding(
    padding: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 5.0, right: 5.0),
    child: InkWell(
      onTap: onTap,
      child: Container(
//        width: MediaQuery.of(context).size.width/10,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28.0),
//
          gradient: LinearGradient(
            begin: Alignment(0.0, -1.0),
            end: Alignment(0.0, 1.0),
            colors: [const Color(0xff9847b7), const Color(0xffbc5dff)],
            stops: [0.0, 1.0],
          ),

          boxShadow: [
            BoxShadow(
                color: Color(0xff9847b7).withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0)
          ],
          color:Color(0xFF000029),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 65.0,
                width: 55.0,
                decoration: BoxDecoration(
                    image: DecorationImage
                      (

                        image: AssetImage(imgPath),
                        fit: BoxFit.contain

                    )),
            ),

//              Container(color: Color(0xFFEBEBEB), height: 1.0),
            Text(name,
              style: TextStyle(color: Colors.grey[200],fontSize: 18,fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    ),
  );
}


class EnterExitRoute extends PageRouteBuilder {
  final Widget enterPage;
  final Widget exitPage;

  EnterExitRoute({this.exitPage, this.enterPage})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    enterPage,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        Stack(
          children: <Widget>[
            SlideTransition(
              position: new Tween<Offset>(
                begin: const Offset(0.0, 0.0),
                end: const Offset(-1.0, -1.0),
              ).animate(animation),
              child: exitPage,
            ),
            SlideTransition(
              position: new Tween<Offset>(
                begin: const Offset(1.0, 1.0),
                end: Offset.zero,
              ).animate(animation),
              child: enterPage,
            )
          ],
        ),
  );
}