import 'package:first_aid/ui/TabBar.dart';
import 'package:first_aid/ui/contact_slider.dart';
import 'package:first_aid/ui/preparation/SliderData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
   //   bottomNavigationBar: TabBarNav(4),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ContactSlider(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 250,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2 - 30,
                            height: 120,
                            decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(15)),
                            child: Container(
                              margin: EdgeInsets.all(8),
                              width: 200,
                              height: 200,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 11, left: 10),
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/phone2.png"))),
                                      ),
                                      Container(
                                        width: 50,
                                        height: 50,
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.blueAccent[700],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(8),
                                        width: 400,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "103 Zəng et",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.blue[800]),
                                            ),
                                            Text(
                                              "Təcili Tibbi Yardım",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.blue[800]),
                                            ),
                                          ],
                                        )
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2 - 30,
                            height: 120,
                            decoration: BoxDecoration(
                                color: Colors.red.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(15)),
                            child: Container(
                              margin: EdgeInsets.all(8),
                              width: 200,
                              height: 200,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 11, left: 10),
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/mobile2.png"))),
                                      ),
                                      Container(
                                        width: 50,
                                        height: 50,
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.red[700],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(8),
                                        width: 400,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "113 Zəng et",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red[900]),
                                            ),
                                            Text(
                                              "Fövqəladə Hallar",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.red[900]),
                                            ),
                                          ],
                                        )
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2 - 30,
                            height: 120,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(15)),
                            child: Container(
                              margin: EdgeInsets.all(8),
                              width: 200,
                              height: 200,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 11, left: 10),
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/hsuare2.png"))),
                                      ),
                                      Container(
                                        width: 50,
                                        height: 50,
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.green[700],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(8),
                                        width: 400,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Xəstəxanalar",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.green[800]),
                                            ),
                                            Text(
                                              "Təcili Tibbi Yardım",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.green[800]),
                                            ),
                                          ],
                                        )
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2 - 30,
                            height: 120,
                            decoration: BoxDecoration(
                                color: Colors.yellowAccent.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(15)),
                            child: Container(
                              margin: EdgeInsets.all(8),
                              width: 200,
                              height: 200,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 11, left: 10),
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/question2.png"))),
                                      ),
                                      Container(
                                        width: 50,
                                        height: 50,
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.yellowAccent[700],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(8),
                                        width: 400,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Bizə yaz",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.yellow[900]),
                                            ),
                                            Text(
                                              "Bizə şikayətin var?!",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.yellow[900]),
                                            ),
                                          ],
                                        )
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  width: 100,
                  child: Text("Menu",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    width: double.infinity,
                    height: 480,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          buildSingleChildScrollView(context,
                              name: "Haqqımızda",
                              icon: "plus.png"),
                          Divider(
                            color: Colors.black45,
                          ),
                          buildSingleChildScrollView(context,
                              name: "Bizimlə əlaqə",
                              icon: "phone.png"),
                          Divider(
                            color: Colors.black45,
                          ),
                          buildSingleChildScrollView(context,
                              name: "İstifadə dilini dəyiş",
                              icon: "globe.png"),
                          Divider(
                            color: Colors.black45,
                          ),
                          buildSingleChildScrollView(context,
                              name: "İstifadə qaydaları", icon: "file-alt.png"),
                          Divider(
                            color: Colors.black45,
                          ),
                          buildSingleChildScrollView(context,
                              name: "Məxfilik siyasəti", icon: "user-secret.png"),
                          Divider(
                            color: Colors.black45,
                          ),
                          buildSingleChildScrollView(context,
                              name: "Dostunla paylaş",
                              icon: "share.png"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SingleChildScrollView buildSingleChildScrollView(BuildContext context,
      {String name, String icon}) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: Row(
          children: <Widget>[
            Container(
              width: 250,
              height: 35,
              child: Row(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.red[600],
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                          image: AssetImage("assets/images/$icon"),
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 22,
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //SizedBox(width: 10,),
          Text(
            "Daha çox",
            style:
                TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
          ),
          //SizedBox(width: 10,),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        // SizedBox(width: 25,),
      ],
    );
  }
}
