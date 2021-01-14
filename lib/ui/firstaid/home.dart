import 'package:first_aid/ui/TabBar.dart';
import 'package:flutter/material.dart';


class FirstAid extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<FirstAid> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: buildAppBar(),
    //  bottomNavigationBar: TabBarNav(3),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 1.2,
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
                        buildSingleChildScrollView(context,name: "Allergiyalar",icon : "allergies.png"),
                        Divider(
                          color: Colors.black45,
                        ),
                        buildSingleChildScrollView(context,name: "Astma hücumları",icon : "lungs-virus.png"),
                        Divider(
                          color: Colors.black45,
                        ),
                        buildSingleChildScrollView(context,name: "Qanaxmalar",icon : "raindrops.png"),
                        Divider(
                          color: Colors.black45,
                        ),
                        buildSingleChildScrollView(context,name: "Sınıqlar",icon : "bone-break.png"),
                        Divider(
                          color: Colors.black45,
                        ),
                        buildSingleChildScrollView(context,name: "Yanıqlar",icon : "fire-alt.png"),
                        Divider(
                          color: Colors.black45,
                        ),
                        buildSingleChildScrollView(context,name: "Boğulmalar",icon : "head-side-cough.png"),
                        Divider(
                          color: Colors.black45,
                        ),
                        buildSingleChildScrollView(context,name: "Allergiyalar",icon : "allergies.png"),
                        Divider(
                          color: Colors.black45,
                        ),
                        buildSingleChildScrollView(context,name: "Astma hücumları",icon : "lungs-virus.png"),
                        Divider(
                          color: Colors.black45,
                        ),
                        buildSingleChildScrollView(context,name: "Qanaxmalar",icon : "raindrops.png"),
                        Divider(
                          color: Colors.black45,
                        ),
                        buildSingleChildScrollView(context,name: "Sınıqlar",icon : "bone-break.png"),
                        Divider(
                          color: Colors.black45,
                        ),
                        buildSingleChildScrollView(context,name: "Yanıqlar",icon : "fire-alt.png"),
                        Divider(
                          color: Colors.black45,
                        ),
                        buildSingleChildScrollView(context,name: "Boğulmalar",icon : "head-side-cough.png"),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  SingleChildScrollView buildSingleChildScrollView(BuildContext context,{String name, String icon}) {
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
                        )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),)
                ],
              ),
            ),
            SizedBox(width: 40,),
            Icon(Icons.arrow_forward_ios,size: 22,)
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.settings,
            color: Colors.black45,
          ),
          //SizedBox(width: 10,),
          Text(
            "İlk yardım",
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
