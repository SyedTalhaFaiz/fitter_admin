import 'package:flutter/material.dart';

import 'admin_profile.dart';
import 'create_type.dart';
import 'home.dart';
import 'requests.dart';
import 'update_adminProfile.dart';


class navigation_bar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationBar();
  }
}
class NavigationBar extends State<navigation_bar> {


  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedTab = 0;
  final _pageOptions = [

    home(),
    create(),
    requests(),
    updateadmin_profile(),


  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return MaterialApp(




      theme: ThemeData(
          primarySwatch: Colors.grey,

          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.grey),
          )),
      home: Scaffold(



        body: _pageOptions[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedTab,
          selectedItemColor: Color(0xff9847b7),
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },


          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 28,),
              title: Text('Home',style: TextStyle(fontSize: height/60),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.create,size: 28),
              title: Text('Create Type',style: TextStyle(fontSize: height/60),),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications,size: 28),
              title: Text('Request',style: TextStyle(fontSize: height/60),),

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,size: 28),
              title: Text('Profile',style: TextStyle(fontSize: height/60),),

            ),
          ],
        ),
      ),
    );
  }}