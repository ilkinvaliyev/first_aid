import 'package:first_aid/settings.dart';
import 'package:first_aid/ui/TabBar.dart';
import 'package:first_aid/ui/buildAppBar.dart';
import 'package:first_aid/ui/contact.dart';
import 'package:first_aid/ui/firstaid/home.dart';
import 'package:first_aid/ui/home_page.dart';
import 'package:first_aid/ui/preparation/preparation.dart';
import 'package:first_aid/ui/tech.dart';
import 'package:first_aid/ui/tech/AppData.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  TabController tabController;
  int activeTab = 2;

  List<Widget> allPages;
  Tech homeTech;
  Preparation homePreparation;
  HomePage homePage;
  FirstAid homeFirstAid;
  Contact homeContact;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homePage = HomePage();
    homeTech = Tech();
    homePreparation = Preparation();
    homeFirstAid = FirstAid();
    homeContact = Contact();
    allPages = [homeTech,homePreparation,homePage,homeFirstAid,homeContact];
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
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      //appBar: buildAppBar(),
      bottomNavigationBar: buildTabBar(),
      body: allPages[activeTab],
    );
  }

  Material buildTabBar() {
    return Material(
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 70,
        width: MediaQuery.of(context).size.width,
        child: TabBar(indicatorColor: Colors.transparent,controller: tabController,
          isScrollable: true,
          tabs: [
            GestureDetector(
              onTap: (){
                setState(() {
                  activeTab = 0;
                });
              },
              child: Tab(
                child : Column(
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
            GestureDetector(
              onTap: (){
                setState(() {
                  activeTab = 1;
                });
              },
              child: Tab(
                child : Column(
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
            GestureDetector(
              onTap: (){
                  setState(() {
                    activeTab = 2;
                  });
              },
              child: Tab(
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
            GestureDetector(
              onTap: (){
                setState(() {
                  activeTab = 3;
                });
              },
              child: Tab(
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 22,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(activeTab==3 ? "assets/images/first_aid1.png" : "assets/images/first-aid.png")
                            )
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("İlk yardım",style: TextStyle(color: Colors.grey,fontSize: 10),)
                    ],
                  ),
                ),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  activeTab = 4;
                });
              },
              child: Tab(
                child : Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 40,
                          height: 22,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(activeTab==4 ? "assets/images/bars1.png" : "assets/images/bars.png")
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
