import 'package:first_aid/settings.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  TabController tabController;

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
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "İlk tibbi yardım",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: defaultColor),
            ),
            Text(
              "Bazar ertəsi, 14 dekabr, 2020",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400],
                  fontFamily: "Montserrat"),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Icon(
            Icons.search,
            color: Colors.black54,
          ),
          Image.asset(
            "assets/images/h-square.png",
            color: Colors.black54,
          )
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: SizedBox(
          height: 70,
          child: TabBar(controller: tabController,tabs: [
            Tab(
              child : Column(
                children: [
                  Container(
                    width: 30,
                    height: 22,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/book-medical.png")
                      )
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("Öyrən",style: TextStyle(color: Colors.grey,fontSize: 10),)
                ],
              ),
            ),
            Tab(
              child : Column(
                children: [
                  Container(
                    width: 30,
                    height: 22,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/shield-check.png")
                      )
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("Hazırlıq",style: TextStyle(color: Colors.grey,fontSize: 10),)
                ],
              ),
            ),
            Tab(
              child : Column(
                children: [
                  Container(
                    width: 30,
                    height: 22,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ambulance.png")
                      )
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("Zəng et",style: TextStyle(color: Colors.grey,fontSize: 10),)
                ],
              ),
            ),
            Tab(
              child : Column(
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
            Tab(
              child : Column(
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

          ],),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 2,
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage("assets/images/book-medical.png"),
      //           color: Colors.grey,
      //         ),
      //         label: ""),
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(AssetImage("assets/images/shield-check.png"),
      //         color: Colors.grey,
      //         ),
      //         label: ""),
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(AssetImage("assets/images/ambulance.png"),
      //           color: Colors.red[700],),
      //         label: ""),
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(AssetImage("assets/images/first-aid.png"),
      //           color: Colors.grey,),
      //         label: ""),
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(AssetImage("assets/images/bars.png"),
      //           color: Colors.grey,),
      //         label: ""),
      //   ],
      //   type: BottomNavigationBarType.fixed,
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.all(28),
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                child: Center(
                  child: Text(
                    "Təcili Tibbi Yardıma ehtiyacın var?",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        fontSize: 33,
                        letterSpacing: -2),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Bir toxunuşla zəng et",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Group 2102@2x.png"))),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Nə etməli olduğunu bilmirsən?",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Aşağıdakı seçimlərdən istifadə et",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w300,
                    fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: [
                      Stories(
                          image: "assets/images/Ellipse 15.png",
                          name: "Koronavirus"),
                      SizedBox(
                        width: 12,
                      ),
                      Stories(
                          image: "assets/images/Ellipse 18.png",
                          name: "Sınıqlar"),
                      SizedBox(
                        width: 12,
                      ),
                      Stories(
                          image: "assets/images/Ellipse 20.png",
                          name: "Qanaxmalar"),
                      SizedBox(
                        width: 12,
                      ),
                      Stories(
                          image: "assets/images/Ellipse 23.png",
                          name: "Yanıqlar"),
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

  Column Stories({String image, String name}) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          padding: EdgeInsets.all(22),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(width: 2, color: Colors.red),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(name)
      ],
    );
  }
}
