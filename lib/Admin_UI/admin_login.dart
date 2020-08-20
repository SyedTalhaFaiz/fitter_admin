import 'package:fitter_admin/Admin_UI/forgot_password.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigation_bar.dart';
class admin_login extends StatefulWidget {
  @override
  _admin_loginState createState() => _admin_loginState();
}

class _admin_loginState extends State<admin_login> {
  String _email;
  String _password;
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  TextEditingController controllerEmail;
  TextEditingController controllerPass;

  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controllerEmail = new TextEditingController(text: "");
    controllerPass = new TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffe3e1e1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                SizedBox(
                  height: height/40,
                ),
                 Image.asset("images/splash_logo.png",
                 scale: 6,),
                SizedBox(
                  height: height/60,
                ),
                Form(
                  key: _formKey,
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: height/20,
                      ),

                      Center(
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                            fontSize: 28,
                            color: Color(0xff9847b7),
                            fontWeight: FontWeight.bold,
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
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter your email',
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                validator: validateEmail,
                                controller: controllerEmail,
                                onSaved: (val) =>
                                    setState(() => _email=val),
                              ),
                            )
                          ],
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Text(
                          "Password",
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
                              child: TextFormField(
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
                                  hintText: 'Enter your password',
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                                keyboardType: TextInputType.text,
                                validator: validatePass,
                                controller: controllerPass,
                                onSaved: (val) =>
                                    setState(() => _password=val),
                              ),
                            )
                          ],
                        ),
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: new FlatButton(
                              child: new Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff9847b7),
                                  fontSize: 15.0,
                                ),
                                textAlign: TextAlign.end,
                              ),
                              onPressed: () => {
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (context) => forget_password()))
                              },
                            ),
                          ),
                        ],
                      ),

                      Center(
                        child: GestureDetector(
                          onTap: () {
                            final form = _formKey.currentState;

                            if (form.validate()) {
                              isLoading=true;
                              form.save();
                              FirebaseAuth.instance
                                  .signInWithEmailAndPassword(email: _email, password: _password)
                                  .then((AuthResult auth){
                                isLoading=false;
                                clearControllers();
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => navigation_bar()));

                              }).catchError((e){
                                isLoading=false;
                                Fluttertoast.showToast(msg: "Sign in fail");
                                this.setState(() {
                                  isLoading = false;
                                });
                                print(e);
                              });

                            }
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
                            child: Center(child: Text("Login",
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

              ],
            ),
          ),
        ),
      ),
    );
  }
  clearControllers()
  {

    controllerEmail = new TextEditingController(text: "");
    controllerPass = new TextEditingController(text: "");
  }
}



String validatePass(String value) {
  if (value.length < 5)
    return 'Password must be more than 5 charater';
  else
    return null;
}


String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return 'Enter Valid Email';
  else
    return null;
}

CheckUser(String Email,String Password) {
  return Firestore.instance
      .collection('admin')
      .where('email' , isEqualTo: Email)
      .where('password' , isEqualTo: Password).getDocuments();
}
