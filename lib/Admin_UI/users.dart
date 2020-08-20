import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

import 'admin_user_profile.dart';

class users extends StatefulWidget {
  @override
  _admin_loginState createState() => _admin_loginState();
}

class Post {
  final String title;
  final String body;

  Post(this.title, this.body);
}

class _admin_loginState extends State<users> {


  List listdata = [
    listItems(
      personname: "Sohail khan",
      imageUrl: "images/admin/profile.png",
      gender: "male",
      date: "12-2-2022",
      address: "pir mahal TTS",
    ),

    listItems(
      personname: "Ali Talib",
      imageUrl: "images/admin/pic1.jpeg",
      gender: "male",
      date: "12-2-2021",
      address: "Kashmiri",
    ),


    listItems(
      personname: "Talha khan",
      imageUrl: "images/admin/pic2.jpg",
      gender: "male",
      date: "12-2-2020",
      address: "Chakwal",
    ),

    listItems(
      personname: "Rehan khan",
      imageUrl: "images/admin/pic2.jpg",
      gender: "male",
      date: "12-2-2023",
      address: "Peshawer",
    ),

    listItems(
      personname: "Luqman Asif",
      imageUrl: "images/admin/pic1.jpeg",
      gender: "male",
      date: "6-25-2020",
      address: "Fasilbad",
    ),

  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff9847b7), //change your color here
        ),
        centerTitle: true,
        title: Text(
          "Users",
          style: TextStyle(
            fontSize: 28,
            color: Color(0xff9847b7),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xffe3e1e1),
        elevation: 1,
      ),
      backgroundColor: const Color(0xffe3e1e1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: height / 50,
              ),

              Container(
                height: 50,
                width: 300,

                alignment: Alignment.center,
                child: TextFormField(
                  cursorColor: Colors.grey,

//                controller: controller,
//                focusNode: focusNode,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,

                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(
                        color: Color(0xfff6f6f6),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius:
                            BorderRadius.all(Radius.circular(30))),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    // border: InputBorder.none,
                    hintText: "Search",
                    hintStyle: (TextStyle(color: Colors.grey)),
                    contentPadding: const EdgeInsets.only(
                      left: 16,
                      right: 20,
                      top: 5,
                      bottom: 5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height / 60,
              ),
              Container(
                color: Color(0xffe3e1e1),
                height: height / 1.4,
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
                                      MaterialPageRoute(builder: (context) => admin_user_profile()));
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
                                      AssetImage(listdata[index].imageUrl),
                                      radius: 26,
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
                          trailing: Icon(Icons.arrow_right),

                        ),
                      ),
                    );
                  },
//                        separatorBuilder: (context, index)
//                        {
//                          return Divider();
//                        },
                ),
              ),
            ],
          ),
        ),
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

  listItems({
    this.personname,
    this.imageUrl,
    this.gender,
    this.date,
    this.address,
  });
}
