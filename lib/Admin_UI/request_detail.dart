import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

class request_detail extends StatefulWidget {
  @override
  _admin_loginState createState() => _admin_loginState();
}

class Post {
  final String title;
  final String body;

  Post(this.title, this.body);
}

class _admin_loginState extends State<request_detail> {

  int age = 22;
  String gender = "M";
  String location = "FSD";


  String phone = "+92 323 507538";
  String address = "Pir Mahal, Toba Tek Singh";
  String insurance = " Professional Liability";
  String Areas = "Fasilabad, Lahore, Karachi";
  String locations_wants = "Fasilabad, Lahore, Karachi";
  String price = "4234";



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff8C04FF), //change your color here
        ),
        title:  Text(
          "Request Detail",
          style: TextStyle(
//              fontSize: height / 42,
              fontWeight: FontWeight.w500,
              color: Color(0xff8c04ff)),
//          maxLines: 2,
//          overflow: TextOverflow.ellipsis,
          //textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            SizedBox(
              height: height / 20,
            ),



            Column(
              children: <Widget>[
                Container(
                  width: width/1.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage:
                            AssetImage("images/admin/pic1.jpeg"),
                            radius: 42,
                          ),
                          Text(
                            "Luqman Asif",
                            style: TextStyle(
                                fontSize: height / 42,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff8c04ff)),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            //textAlign: TextAlign.center,
                          ),
                        ],
                      ),


                      Column(
                        children: <Widget>[
                          Text(
                            "$age",
                            style: TextStyle(
                                fontSize: height / 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                            ),

                            overflow: TextOverflow.ellipsis,
                            //textAlign: TextAlign.center,
                          ),
                          Text(
                            "Age",
                            style: TextStyle(
                              fontSize: height / 42,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            //textAlign: TextAlign.center,
                          ),
                        ],
                      ),

                      Column(
                        children: <Widget>[
                          Text(
                            "$gender",
                            style: TextStyle(
                              fontSize: height / 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),

                            overflow: TextOverflow.ellipsis,
                            //textAlign: TextAlign.center,
                          ),
                          Text(
                            "Gender",
                            style: TextStyle(
                              fontSize: height / 42,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            //textAlign: TextAlign.center,
                          ),
                        ],
                      ),

                      Column(
                        children: <Widget>[
                          Text(
                            "$location",
                            style: TextStyle(
                              fontSize: height / 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),

                            overflow: TextOverflow.ellipsis,
                            //textAlign: TextAlign.center,
                          ),
                          Text(
                            "Home Town",
                            style: TextStyle(
                              fontSize: height / 42,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            //textAlign: TextAlign.center,
                          ),
                        ],
                      ),

                    ],
                  ),
                ),


                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),




                SizedBox(
                  height: height/60,
                ),
                Container(
                  width: width/1.4,
                  child:  Text(
                    "Info:",
                    style: TextStyle(
                        fontSize: height / 38,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff8c04ff)),
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    //textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(
                  height: height/60,
                ),
                Divider(
                  color: Colors.grey,
                ),

                //phone number
                Container(
                  width: width/1.2,
                  color: Colors.white30,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Phone No: ",
                        style: TextStyle(
                            fontSize: height / 42,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        //textAlign: TextAlign.center,
                      ),
                      Text(
                        "$phone",
                        style: TextStyle(
                            fontSize: height / 48,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff8c04ff)),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        //textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

//                  SizedBox(
//                    height: height/60,
//                  ),
                Divider(
                  color: Colors.grey,
                ),

                //address
                Container(
                  width: width/1.2,
                  color: Colors.white30,
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Address: ",
                        style: TextStyle(
                            fontSize: height / 42,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        //textAlign: TextAlign.center,
                      ),
                      Text(
                        "$address",
                        style: TextStyle(
                            fontSize: height / 48,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff8c04ff)),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        //textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),





//                  SizedBox(
//                    height: height/60,
//                  ),
                Divider(
                  color: Colors.grey,
                ),

                //insurance
                Container(
                  width: width/1.2,
                  color: Colors.white30,
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Insurance: ",
                        style: TextStyle(
                            fontSize: height / 42,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        //textAlign: TextAlign.center,
                      ),
                      Text(
                        "$insurance",
                        style: TextStyle(
                            fontSize: height / 48,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff8c04ff)),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        //textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),





//                  SizedBox(
//                    height: height/60,
//                  ),
                Divider(
                  color: Colors.grey,
                ),

                //areas wants to teach
                Container(
                  width: width/1.2,
                  color: Colors.white30,
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Area Wants: ",
                        style: TextStyle(
                            fontSize: height / 42,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        //textAlign: TextAlign.center,
                      ),
                      Text(
                        "$Areas",
                        style: TextStyle(
                            fontSize: height / 52,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff8c04ff)),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        //textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),





//                  SizedBox(
//                    height: height/60,
//                  ),
                Divider(
                  color: Colors.grey,
                ),


                //location wants to teach
                Container(
                  width: width/1.2,
                  color: Colors.white30,
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Location Wants: ",
                        style: TextStyle(
                            fontSize: height / 42,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        //textAlign: TextAlign.center,
                      ),
                      Text(
                        "$locations_wants",
                        style: TextStyle(
                            fontSize: height / 52,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff8c04ff)),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        //textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),




//                  SizedBox(
//                    height: height/60,
//                  ),
                Divider(
                  color: Colors.grey,
                ),


                //price wants
                Container(
                  width: width/1.2,
                  color: Colors.white30,
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Price Wants: ",
                        style: TextStyle(
                            fontSize: height / 42,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        //textAlign: TextAlign.center,
                      ),
                      Text(
                        "\$$price",
                        style: TextStyle(
                            fontSize: height / 48,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff8c04ff)),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        //textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),



//                  SizedBox(
//                    height: height/60,
//                  ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: height/60,
                ),
                Container(
                  width: width/1.4,
                  child:  Text(
                    "Areas and Certifications:",
                    style: TextStyle(
                        fontSize: height / 38,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff8c04ff)),
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    //textAlign: TextAlign.center,
                  ),
                ),



                SizedBox(
                  height: height/60,
                ),
                Divider(
                  color: Colors.grey,
                ),


                //areas and certification
                Container(
                  width: width/1.2,
                  color: Colors.white30,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 18,
                        color: Colors.grey,
                      ),
                      Text(
                        "Pir Mahal, Toba tek singh",
                        style: TextStyle(
                            fontSize: height / 42,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        //textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: width/8,
                      ),
                      Icon(
                        Icons.file_download,
                        size: 18,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),

                Divider(
                  color: Colors.grey,
                ),


                //areas and certification
                Container(
                  width: width/1.2,
                  color: Colors.white30,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 18,
                        color: Colors.grey,
                      ),
                      Text(
                        "Pir Mahal, Toba tek singh",
                        style: TextStyle(
                            fontSize: height / 42,
                            fontWeight: FontWeight.w800,
                            color: Colors.black54),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        //textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        width: width/8,
                      ),
                      Icon(
                        Icons.file_download,
                        size: 18,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),




                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: height/60,
                ),
                Container(
                  width: width/1.4,
                  child:  Text(
                    "Description:",
                    style: TextStyle(
                        fontSize: height / 38,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff8c04ff)),
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    //textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(
                  height: height/90,
                ),

                Container(
                  width: width/1.3,
                  child:  Text(
                    "If an Instagram account is connected to the Page, they can respond to and delete comments. send Direct sync business contact info and create ads.",
                    style: TextStyle(
                        fontSize: height / 60,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                    maxLines: 4,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    //textAlign: TextAlign.center,
                  ),

                ),

                SizedBox(
                  height: height/40,
                ),


                Container(
                  width: width/1.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[

                      GestureDetector(
                        onTap: ()
                        {
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                  builder: (context) => admin_login()));
                        },
                        child: Container(
                          width: width/3,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            color: Colors.redAccent
                          ),
                          child: Center(child: Text("Decline",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),),),
                        ),
                      ),

                      SizedBox(
                        width: width/60,
                      ),
                      GestureDetector(
                        onTap: ()
                        {
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                  builder: (context) => admin_login()));
                        },
                        child: Container(
                          width: width/3,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            color: Colors.green
                          ),
                          child: Center(child: Text("Approve",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),),),
                        ),
                      ),

                    ],
                  ),
                ),


                SizedBox(
                  height: height/40,
                ),

              ],
            ),








          ],
        ),
      ),
    );
  }
}


