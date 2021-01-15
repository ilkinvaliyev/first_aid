import 'package:first_aid/ui/TabBar.dart';
import 'package:first_aid/ui/preparation/SliderData.dart';
import 'package:first_aid/ui/tech/AppData.dart';
import 'package:flutter/material.dart';

class Preparation extends StatefulWidget {
  @override
  _PreparationState createState() => _PreparationState();
}

class _PreparationState extends State<Preparation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      //   bottomNavigationBar: TabBarNav(1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SliderData(),
            AppData(),
            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: 480,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      buildSingleChildScrollView(context,
                          name: "Kimyəvi təcili vəziyyət",
                          icon: "allergies.png"),
                      Divider(
                        color: Colors.black45,
                      ),
                      buildSingleChildScrollView(context,
                          name: "Təcili yardım dəsti", icon: "lungs-virus.png"),
                      Divider(
                        color: Colors.black45,
                      ),
                      buildSingleChildScrollView(context,
                          name: "Gündəlik fövqəladə hallar",
                          icon: "raindrops.png"),
                      Divider(
                        color: Colors.black45,
                      ),
                      buildSingleChildScrollView(context,
                          name: "Daşqın", icon: "bone-break.png"),
                      Divider(
                        color: Colors.black45,
                      ),
                      buildSingleChildScrollView(context,
                          name: "Yanğın", icon: "fire-alt.png"),
                      Divider(
                        color: Colors.black45,
                      ),
                      buildSingleChildScrollView(context,
                          name: "Qrip pandemiyası",
                          icon: "head-side-cough.png"),
                    ],
                  ),
                ),
              ),
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
            child: Container(
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 0),
                leading: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.red[600],
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                        image: AssetImage("assets/images/$icon"),
                      ),
                    )),
                title: Text(
                  name,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 22,
                ),
              ),
            )
        )
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.settings,
            color: Colors.black45,
          ),
          //SizedBox(width: 10,),
          Text(
            "Hazırlıq",
            style:
                TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
          ),
          //SizedBox(width: 10,),
          Icon(
            Icons.search,
            color: Colors.black54,
            size: 26,
          ),
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
