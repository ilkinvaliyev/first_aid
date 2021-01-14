import 'package:flutter/material.dart';

class AppData extends StatefulWidget {
  @override
  _AppDataState createState() => _AppDataState();
}

class _AppDataState extends State<AppData> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: <Widget>[
            buildAppSlider("hos1.jpeg","MD Training"),
            SizedBox(
              width: 30,
            ),
            buildAppSlider("hos2.jpg","VideoDoktor"),
            SizedBox(
              width: 30,
            ),
            buildAppSlider("hos3.jpg","BurlaXatun"),
            SizedBox(
              width: 30,
            ),
            buildAppSlider("hos1.jpeg","MD Training"),
            SizedBox(
              width: 30,
            ),
            buildAppSlider("hos2.jpg","VideoDoktor"),
            SizedBox(
              width: 30,
            ),
            buildAppSlider("hos3.jpg","BurlaXatun"),
          ],
        ),
      ),
    );
  }


  Container buildAppSlider(String image,String name) {
    return  Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage("assets/images/$image"), fit: BoxFit.cover),
        ),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black45.withOpacity(0.4)),
          child: Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
            textAlign: TextAlign.center,
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
            "Öyrən",
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
