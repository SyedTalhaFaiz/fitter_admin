import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

import 'request_detail.dart';

class requests extends StatefulWidget {
  @override
  _admin_loginState createState() => _admin_loginState();
}

class Post {
  final String title;
  final String body;

  Post(this.title, this.body);
}

class _admin_loginState extends State<requests> {






  TabBar tabBarlabel() => TabBar(
      tabs: <Widget>[
        Tab(
          text: "Woker Requests",
        ),
        Tab(
          text: "Lesson Requests",
        ),

      ],

      labelColor: Color(0xff9847b7),
//    labelPadding: EdgeInsets.symmetric(vertical: 6),
      labelStyle: TextStyle(fontSize: 20),
      indicatorColor: Color(0xff9847b7),
      unselectedLabelColor: Color(0xff9847b7),
      unselectedLabelStyle: TextStyle(fontSize: 14),
      onTap: (index)
      {
        var content = "";
        switch(index){
          case 0:
            content = "Home";
            break;
          case 1:
            content = "Home";
            break;
        }
        print("$content");
      }
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
//        appBar: AppBar(
//          iconTheme: IconThemeData(
//            color: Color(0xff8C04FF), //change your color here
//          ),
//          backgroundColor: Colors.white,
//          elevation: 0,
//        ),
        backgroundColor: Color(0xffe3e1e1),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  decoration: new BoxDecoration(
                    color: Color(0xffe3e1e1),
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(0.0),
                        bottomLeft: const Radius.circular(40.0),
                        bottomRight: const Radius.circular(40.0),
                        topRight: const Radius.circular(0.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff9847b7).withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                  ),
                  //color: Colors.white,
                  height: height / 8,
                  width: width / 1,
                  child: Image.asset("images/splash_logo.png",
                    scale: 8,)


//                  Image.asset("images/splash_logo.png",
//                  )
              ),
              SizedBox(
                height: height / 40,
              ),

              Container(
                height: height/1.4,
                width: width/1,
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: <Widget>[

                      SizedBox(
                        height: height / 60,
                      ),


                      Container(
                        child: tabBarlabel(),
                      ),
                      Expanded(
                        child: Container(
                          child: TabBarView(
                            children: <Widget>[
                              Container(
//                              color: Colors.red,
                                child: worker_conatiner(),
                              ),
                              Container(
                                child: lesson_container(),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget worker_conatiner()
  {



    List listdata = [
      listItems(
        personname: "Sohail khan",
        imageUrl: "images/admin/profile.png",
        gender: "male",
        date: "12-2-2022",
        address: "pir mahal TTS",
        rating: "4.3",
      ),

      listItems(
        personname: "Ali Talib",
        imageUrl: "images/admin/pic1.jpeg",
        gender: "male",
        date: "12-2-2021",
        address: "Kashmiri",
        rating: "4.2",
      ),


      listItems(
        personname: "Talha khan",
        imageUrl: "images/admin/pic2.jpg",
        gender: "male",
        date: "12-2-2020",
        address: "Chakwal",
        rating: "4.8",
      ),

      listItems(
        personname: "Rehan khan",
        imageUrl: "images/admin/pic2.jpg",
        gender: "male",
        date: "12-2-2023",
        address: "Peshawer",
        rating: "4.9",
      ),

      listItems(
        personname: "Luqman Asif",
        imageUrl: "images/admin/pic1.jpeg",
        gender: "male",
        date: "6-25-2020",
        address: "Fasilbad",
        rating: "4.7",
      ),

    ];


  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
    return  Container(
      color: Color(0xffe3e1e1),
      height: height / 1.36,
//                      width: width / 1,
      child: ListView.builder(

        itemCount: listdata.length,
        itemBuilder: (context, index) {
          return Card(
            color: Color(0xffefefef),
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: ListTile(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => request_detail()));
                  print("Hell");
                },

                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      //color: Colors.yellow,
                      width: width / 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage:
                            AssetImage(listdata[index].imageUrl,),
                            radius: 28,

                          ),
                          SizedBox(
                            height: height/90,
                          ),
                          Text(
                            listdata[index].personname,
                            style: TextStyle(
                                fontSize: height / 50,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff413564)),
                            textAlign: TextAlign.center,
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: width/60,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        SizedBox(
                          height: height/90,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.person_pin,size: 18,),
                            Text(
                              listdata[index].gender,
                              style: TextStyle(
                                  fontSize: height / 48,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4f4848)),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              //textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height/90,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.date_range,size: 18,),
                            Text(
                              listdata[index].date,
                              style: TextStyle(
                                  fontSize: height / 48,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4f4848)),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              //textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height/90,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.location_on,size: 18,),
                            Text(
                              listdata[index].address,
                              style: TextStyle(
                                  fontSize: height / 48,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4f4848)),
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
                trailing: Container(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_right,),
                )),

              ),
            ),
          );
        },
//                          separatorBuilder: (context, index)
//                          {
//                            return Divider();
//                          },
      ),
    );
  }

  Widget lesson_container()
  {

    List lessondata = [
      lessonitem(
        personname: "Sohail khan",
        imageUrl: "images/admin/profile.png",
        gender: "Sports",
        date: "Certificates",
        address: "Insurance Policy ",
      ),

      lessonitem(
        personname: "Ali Talib",
        imageUrl: "images/admin/pic1.jpeg",
        gender: "Games",
        date: "Certificates",
        address: "Insurance Policy ",
      ),

      lessonitem(
        personname: "Luqman Asif",
        imageUrl: "images/admin/pic1.jpeg",
        gender: "Sports",
        date: "Certificates",
        address: "Insurance Policy ",
      ),

    ];


    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Color(0xffe3e1e1),
      height: height / 1.38,
//                      width: width / 1,
      child: ListView.builder(

        itemCount: lessondata.length,
        itemBuilder: (context, index) {
          return Card(
            color: Color(0xffefefef),
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: ListTile(
                onTap: (){
//                  Navigator.push(context,
//                      MaterialPageRoute(builder: (context) => request_detail()));
                  print("Hell");
                },

                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        SizedBox(
                          height: height/90,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.merge_type,size: 18,),
                            Text(
                              lessondata[index].gender,
                              style: TextStyle(
                                  fontSize: height / 48,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4f4848)),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              //textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height/90,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.file_download,size: 18,),
                            Text(
                              lessondata[index].date,
                              style: TextStyle(
                                  fontSize: height / 48,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4f4848)),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              //textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height/90,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.file_download,size: 18,),
                            Text(
                              lessondata[index].address,
                              style: TextStyle(
                                  fontSize: height / 48,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4f4848)),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              //textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),

                    Column(
                      children: <Widget>[
                        GestureDetector(
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
                                          Text("Are You Sure?"),
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
                                                    "Yes",
                                                    style: TextStyle(
                                                        fontSize: height / 50,
                                                        fontWeight: FontWeight.w500
                                                      //letterSpacing: 1
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                              ),
                                              SizedBox(width: width/60,),
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
                                                    "No",
                                                    style: TextStyle(
                                                        fontSize: height / 50,
                                                        fontWeight: FontWeight.w500
                                                      //letterSpacing: 1
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.pop(context);
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
                            width: width/5,
                            height: 24.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                                color: Colors.green
                            ),
                            child: Center(child: Text("Approve",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),),),
                          ),
                        ),
                        SizedBox(height: height/90,),
                        GestureDetector(
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
                                          Text("Are You Sure?"),
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
                                                  color:Color(0xff9847b7),
                                                  textColor: Colors.white,
                                                  child: Text(
                                                    "Yes",
                                                    style: TextStyle(
                                                        fontSize: height / 50,
                                                        fontWeight: FontWeight.w500
                                                      //letterSpacing: 1
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                              ),
                                              SizedBox(width: width/60,),
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
                                                    "No",
                                                    style: TextStyle(
                                                        fontSize: height / 50,
                                                        fontWeight: FontWeight.w500
                                                      //letterSpacing: 1
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.pop(context);
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
                            width: width/5,
                            height: 24.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                                color: Colors.redAccent
                            ),
                            child: Center(child: Text("Decline",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                              ),),),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),




              ),
            ),
          );
        },
//                          separatorBuilder: (context, index)
//                          {
//                            return Divider();
//                          },
      ),
    );
  }


}

class listItems {
  String personname;
  String imageUrl;
  String gender;
  String date;
  String address;
  String rating;
  listItems({
    this.personname,
    this.imageUrl,
    this.gender,
    this.date,
    this.address,
    this.rating,
  });
}

class lessonitem {
  String personname;
  String imageUrl;
  String gender;
  String date;
  String address;
  String rating;
  lessonitem({
    this.personname,
    this.imageUrl,
    this.gender,
    this.date,
    this.address,
    this.rating,
  });
}


