import 'package:fitter_admin/Admin_UI/admin_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class forget_password extends StatefulWidget {
  @override
  _admin_loginState createState() => _admin_loginState();
}

class _admin_loginState extends State<forget_password> {



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title:  Image.asset("images/splash_logo.png",
          scale: 10,),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Color(0xff9847b7),//change your color here
        ),
        backgroundColor:Color(0xffe3e1e1),
        elevation: 2,
      ),
      backgroundColor: Color(0xffe3e1e1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: height/20,
            ),

            Center(
              child: Text(
                "Reset Password",
                style: TextStyle(
                  fontSize: 28,
                  color: Color(0xff9847b7),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(
              height: height/20,
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
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  )
                ],
              ),
            ),



            SizedBox(
              height: height/40,
            ),



            Center(
              child: GestureDetector(
                onTap: ()
                {
                  return showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          content: Container(

                            height: height/9,
                            child: Column(

                              children: <Widget>[
                                Text("Check Your Email"),
                                SizedBox(height: height/60,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ButtonTheme(
                                      minWidth: width/4,
                                      height: height/18,
                                      child: FlatButton(
                                        shape: new RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.circular(20.0),
                                          //    side: BorderSide(color: Color(0xff2CBE77))
                                        ),
                                        color: Color(0xff9847b7),
                                        textColor: Colors.white,
                                        child: Text(
                                          "Ok",
                                          style: TextStyle(
                                              fontSize: height / 50,
                                              fontWeight: FontWeight.w500
                                            //letterSpacing: 1
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => admin_login()));
                                        },
                                      ),
                                    ),

                                  ],
                                )
                              ],
                            ),
                          )

                      );
                    },
                  );
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
                  child: Center(child: Text("Reset",
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
    );
  }
}
