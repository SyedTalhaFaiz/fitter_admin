import 'package:fitter_admin/Admin_UI/walkthrough.dart';
import 'package:fitter_admin/Admin_UI/Admin_Splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget
{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new admin_Splash(),
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => new walkthrough()
      },
    );
  }
}

