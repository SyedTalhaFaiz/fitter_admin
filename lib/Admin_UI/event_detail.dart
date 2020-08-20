import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'admin_user_profile.dart';



class event_detail extends StatefulWidget {
  @override
  _admin_loginState createState() => _admin_loginState();
}

class Post {
  final String title;
  final String body;

  Post(this.title, this.body);
}

class _admin_loginState extends State<event_detail> {

  String location = 'Pir Mahal,Toba Tek Singh';
  String rating = '4.9';
  String dollar = '400';
  String time = '10:00AM to 11:00AM';
  String date = '18.1.2021';
  String status = 'Mininum';
  String people = '6';


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "Event Details",
          style: TextStyle(
//            fontSize: 28,
            color: Color(0xff8C04FF),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Color(0xff9847b7), //change your color here
        ),
        backgroundColor: Color(0xffe3e1e1),
        elevation: 2,
      ),
      backgroundColor: Color(0xffe3e1e1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[


              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Container(
                  height: height/1.8,
                  width: width/1.1,
                  child: Card(
                    child: Container(

                      child: Padding(
                        padding: const EdgeInsets.only(top:20.0,bottom: 18,left: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
//                                      mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[

                            Text(
                              "The Story behind the space X",
                              style: TextStyle(
                                  fontSize: height / 36,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff4f4848)),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                            ),

                            SizedBox(
                              height: height/50,
                            ),

                            //description
                            Text(
                              "Description:",
                              style: TextStyle(
                                fontSize: height / 42,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff9847b7),),
                              //textAlign: TextAlign.center,
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
                              height: height/50,
                            ),

                            //location
                            Row(
                              children: <Widget>[
                                Icon(Icons.location_on,size: 16,),
                                SizedBox(width: width/30,),
                                Text(
                                  "$location",
                                  style: TextStyle(
                                      fontSize: height / 52,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff4f4848)
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  //textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height/80,
                            ),

                            //time
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.access_time,
                                  color: Color(0xff4f4848),
                                  size: 16,
                                ),
                                SizedBox(width: width/30,),
                                Text("$time",
                                  style: TextStyle(
                                      color: Color(0xff4f4848),
//                                                  fontWeight: FontWeight.w500,
                                      fontSize: 16
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height/80,
                            ),

                            //date
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.date_range,
//                                              color: Colors.yellow,
                                  size: 16,
                                ),
                                SizedBox(width: width/30,),
                                Text("$date",
                                  style: TextStyle(
                                      color: Color(0xff4f4848),
//                                                  fontWeight: FontWeight.w500,
                                      fontSize: 16
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height/80,
                            ),

                            //rating
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
//                                              color: Colors.yellow,
                                  size: 16,
                                ),
                                SizedBox(width: width/30,),
                                Text(
                                  "$rating",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff4f4848)
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height/80,
                            ),

                            //dollar
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.attach_money,
//                                              color: Colors.yellow,
                                  size: 16,
                                ),
                                SizedBox(width: width/30,),
                                Text("$dollar",
                                  style: TextStyle(
                                      color: Color(0xff4f4848),
//                                                  fontWeight: FontWeight.w500,
                                      fontSize: 16
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height/80,
                            ),

                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.people,
//                                              color: Colors.yellow,
                                  size: 16,
                                ),
                                SizedBox(width: width/30,),
                                Text("$people",
                                  style: TextStyle(
                                      color: Color(0xff4f4848),
//                                                  fontWeight: FontWeight.w500,
                                      fontSize: 16
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height/80,
                            ),

                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.label_important,
//                                              color: Colors.yellow,
                                  size: 16,
                                ),
                                SizedBox(width: width/30,),
                                Text("Status $status",
                                  style: TextStyle(
                                      color: Color(0xff4f4848),
//                                                  fontWeight: FontWeight.w500,
                                      fontSize: 16
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height/50,
                            ),


                            SizedBox(
                              height: height/60,
                            ),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.date_range,size: 18,
                                      color: Color(0xff9847b7),),
                                    Text(
                                      "Invite friends",
                                      style: TextStyle(
                                        fontSize: height / 48,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff9847b7),),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      //textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),

                                Row(
                                  children: <Widget>[
                                    Icon(Icons.share,size: 18,
                                      color: Color(0xff9847b7),),
                                    Text(
                                      "Share this Event",
                                      style: TextStyle(
                                        fontSize: height / 48,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff9847b7),),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      //textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),

                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: height / 60,
              ),

              Container(
                width: width/1.2,
                child: Text(
                  "Location:",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xff8C04FF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Image.asset("images/admin/map.png",
              scale: 1,),

              SizedBox(
                height: height / 60,
              ),

              Container(
                width: width/1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
//                            color: Colors.yellow,
                      width:width/3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage("images/admin/pic1.jpeg"),
                            radius: 32,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(
                                "4.9",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
//                            color: Colors.yellow,
                      width:width/1.6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Text(
                            "Syed Talha",
                            style: TextStyle(
                                fontSize: height / 42,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            //textAlign: TextAlign.center,
                          ),
                          Text(
                            "If an Instagram account is connected to the Page, they can respond to and delete comments. send Direct sync business contact info and create ads.",
                            style: TextStyle(
                                fontSize: height / 60,
                                fontWeight: FontWeight.w400,
                                color: Colors.black45),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            //textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 60,
              ),


              Container(
                width: width/1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
//                            color: Colors.yellow,
                      width:width/3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage("images/admin/pic1.jpeg"),
                            radius: 32,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(
                                "4.9",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
//                            color: Colors.yellow,
                      width:width/1.6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Text(
                            "Syed Talha",
                            style: TextStyle(
                                fontSize: height / 42,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            //textAlign: TextAlign.center,
                          ),
                          Text(
                            "If an Instagram account is connected to the Page, they can respond to and delete comments. send Direct sync business contact info and create ads.",
                            style: TextStyle(
                                fontSize: height / 60,
                                fontWeight: FontWeight.w400,
                                color: Colors.black45),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            //textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
,

              SizedBox(
                height: height / 60,
              ),


            ],
          ),
        ),
      ),
    );
  }
}

