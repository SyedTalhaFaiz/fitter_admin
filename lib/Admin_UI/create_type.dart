import 'package:flappy_search_bar/scaled_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

class create extends StatefulWidget {
  @override
  _admin_loginState createState() => _admin_loginState();
}

class _admin_loginState extends State<create> {

  TextEditingController evettext = TextEditingController();
  List<String> Event = [];

  TextEditingController subevettext = TextEditingController();
  List<String> subEvent = [];

  @override
  Widget build(BuildContext context) {



    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
//      appBar: AppBar(
//        iconTheme: IconThemeData(
//          color: Color(0xff8C04FF), //change your color here
//        ),
//        backgroundColor:Colors.white,
//        elevation: 0,
//      ),
        backgroundColor:Color(0xffe3e1e1),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Container(

                  decoration: new BoxDecoration(
                      color: Color(0xffe3e1e1),
                      borderRadius: new BorderRadius.only(
                          topLeft:  const  Radius.circular(0.0),
                          bottomLeft:  const  Radius.circular(40.0),
                          bottomRight:  const  Radius.circular(40.0),
                          topRight: const  Radius.circular(0.0)),

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
              ),



              SizedBox(
                height: height/30,
              ),


              Container(
                width: width/1,
                height: height/1.4,
//                alignment: Alignment.b,
                decoration: BoxDecoration(
                  color: Color(0xffe3e1e1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0)),
//              boxShadow: [
//                BoxShadow(
//                  color:Color(0xff8C04FF).withOpacity(0.9),
//                  spreadRadius: 0,
//                  blurRadius: 1,
//                  offset: Offset(0, 15), // changes position of shadow
//                ),
//              ],
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: height/50,
                    ),

                    Center(
                      child: Text(
                        "Lesson Type",
                        style: TextStyle(
                          fontSize: 28,
                          color: Color(0xff9847b7),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),


//                      Center(
//                        child: Container(
//                          height: 180,
//                          width: 300,
//                          child: SearchBar(
//                            searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
//                            headerPadding: EdgeInsets.symmetric(horizontal: 10),
//                            listPadding: EdgeInsets.symmetric(horizontal: 10),
//                            searchBarController: _searchBarController,
//                            cancellationWidget: Text("Cancel"),
////                      indexedScaledTileBuilder: (int index) =>  ScaledTile.count(1, index.isEven? 2 :1),
//////                          ScaledTile.count(1, index.isEven ? 2 : 1),
//                            onCancelled: () {
//                              print("Cancelled triggered");
//                            },
//                          ),
//                        ),
//                      ),

                    SizedBox(
                      height: height/20,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(
                        "Create event",
                        style: TextStyle(color: Colors.grey, fontSize: 16.0,
                        fontWeight: FontWeight.bold),
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
                              Icons.create,
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
                              controller: evettext,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Gaming',
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
                    "Event Sub Type",
                    style: TextStyle(color: Colors.grey, fontSize: 16.0,
                        fontWeight: FontWeight.bold),
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
                          Icons.create,
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
                          controller: subevettext,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Taken 5',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                    SizedBox(
                      height: height/20,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: ()
                        {
                           setState(() {
                             Event.add(evettext.text);
                             subEvent.add(subevettext.text);
                    });
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
                          child: Center(child: Text("Save",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),),),
                        ),
                      ),
                    ),

                    Divider(

                    ),


                    Container(
//        color: Colors.lightGreen,
                      height: height / 5,
                      child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Row(
                                children: <Widget>[
//                                  Container(
////                      height: height/6,
//                                    width: 25,
//                                    height: 25,
//                                    decoration: BoxDecoration(
//                                      border: Border.all(color: Colors.white),
//                                      shape: BoxShape.circle,
//                                      color: Color(0xffbc5dff)
//                                    ),
////                        padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
//
//                                    child: Center(
//                                      child: new Icon(
//                                        Icons.label_important,
//                                        color: Colors.white,
//                                        size: 14,
//                                      ),
//                                    ),
//                                  ),
                                  SizedBox(
                                    width: width / 60,
                                  ),

                                  Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[

                                          Text(
                                            Event[index],
                                            style: TextStyle(
                                              color: Color(0xff9847b7),
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:8.0),
                                        child: Text(
                                          subEvent[index],
                                          style: TextStyle(
                                            color: Color(0xff9847b7),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
//                              trailing: Icon(
//                                Icons.delete,
//                                color: Color(0xffbc5dff)
//                              ),
                              onTap: () {
                                setState(() {
                                  Event.removeWhere(
                                          (currentItem) => Event[index] == currentItem);
                                });
                              },
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider();
                          },
                          itemCount: Event.length),
                    )


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


