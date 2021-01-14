import 'package:first_aid/settings.dart';
import 'package:flutter/material.dart';

class BuildAppBar extends StatefulWidget {
  @override
  _BuildAppBarState createState() => _BuildAppBarState();
}

class _BuildAppBarState extends State<BuildAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
