import 'package:first_aid/ui/contact.dart';
import 'package:first_aid/ui/firstaid/home.dart';
import 'package:first_aid/ui/my_home.dart';
import 'package:first_aid/ui/preparation/preparation.dart';
import 'package:first_aid/ui/tech.dart';
import 'package:flutter/material.dart';

class TabBarNav extends StatefulWidget {

  TabBarNav(activeTab);

  @override
  _TabBarNavState createState() => _TabBarNavState();
}

class _TabBarNavState extends State<TabBarNav> with SingleTickerProviderStateMixin {
  TabController tabController;
  int activeTab;

//  int activeTab = 2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
      return Material(
        color: Colors.white,
        child: SizedBox(
          height: 70,
          child: TabBar(controller: tabController,

            tabs: [
              Tab(
                child : GestureDetector(
                  onTap: (){
                    setState(() {
                      // if(activeTab!=0) {
                      //   Navigator.pushReplacement(
                      //       context, MaterialPageRoute(builder: (context) =>
                      //       Tech()));
                      // }
                      activeTab = 0;

                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 22,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(activeTab==0 ? "assets/images/book-medical1.png" : "assets/images/book-medical.png")
                            )
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Öyrən",style: TextStyle(color: Colors.grey,fontSize: 10),)
                    ],
                  ),
                ),
              ),
              Tab(
                child : GestureDetector(
                  onTap: (){
                    // Navigator.pushReplacement(
                    //     context, MaterialPageRoute(builder: (context) =>
                    //     Preparation()));
                    setState(() {
                      activeTab = 1;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 22,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(activeTab==1 ? "assets/images/shield-check1.png" : "assets/images/shield-check.png")
                            )
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Hazırlıq",style: TextStyle(color: Colors.grey,fontSize: 10),)
                    ],
                  ),
                ),
              ),
              Tab(

                child : GestureDetector(
                  onTap: (){
                    // Navigator.pushReplacement(
                    //     context, MaterialPageRoute(builder: (context) =>
                    //     MyHome()));
                    setState(() {
                      activeTab = 2;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 22,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(activeTab==2 ? "assets/images/ambulance1.png" : "assets/images/ambulance.png"),
                            )
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("Zəng et",style: TextStyle(color: Colors.grey,fontSize: 10),)
                    ],
                  ),
                ),
              ),
              Tab(
                child : GestureDetector(
                  onTap: (){
                    // Navigator.pushReplacement(
                    //     context, MaterialPageRoute(builder: (context) =>
                    //     FirstAid()));
                    setState(() {
                      activeTab = 3;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 22,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/first-aid.png")
                            )
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("İlk yardım",style: TextStyle(color: Colors.grey,fontSize: 10),)
                    ],
                  ),
                ),
              ),
              Tab(
                child : GestureDetector(
                  onTap: (){
                    // Navigator.pushReplacement(
                    //     context, MaterialPageRoute(builder: (context) =>
                    //     Contact()));
                    setState(() {
                      activeTab = 4;
                    });
                  },
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 40,
                            height: 22,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/bars.png")
                                )
                            ),
                          ),
                          Positioned(
                            left: 33,
                            child: Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.red[700]
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 5,),
                      Text("Daha çox",style: TextStyle(color: Colors.grey,fontSize: 10),)
                    ],
                  ),
                ),
              ),

            ],),
        ),
      );

  }
}

