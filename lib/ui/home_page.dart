import 'package:flutter/material.dart';
import 'package:first_aid/ui/TabBar.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
    //  bottomNavigationBar: TabBarNav(2),
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
      )
      ,
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

  AppBar buildAppBar() {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "İlk tibbi yardım",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
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
    );
  }
  // AppBar buildAppBar() {
  //   return AppBar(
  //     centerTitle: true,
  //     title: Row(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Icon(
  //           Icons.settings,
  //           color: Colors.black45,
  //         ),
  //         //SizedBox(width: 10,),
  //         Text(
  //           "Öyrən",
  //           style:
  //           TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
  //         ),
  //         //SizedBox(width: 10,),
  //         Icon(
  //           Icons.search,
  //           color: Colors.black54,
  //           size: 26,
  //         ),
  //       ],
  //     ),
  //     backgroundColor: Colors.transparent,
  //     elevation: 0,
  //     actions: [
  //       // SizedBox(width: 25,),
  //     ],
  //   );
  // }

}
