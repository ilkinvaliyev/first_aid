import 'package:first_aid/settings.dart';
import 'package:flutter/material.dart';

class Single extends StatefulWidget {
  @override
  _SingleState createState() => _SingleState();
}

class _SingleState extends State<Single> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: defaultColor, //change your color here
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Allergiyalar",
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: defaultColor),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("assets/images/rectcont.png"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.7), BlendMode.dstATop))),
              child: Center(
                  child: Text(
                "Reklam Banneri",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 160,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Rectangle 243.png"),
                      fit: BoxFit.contain)),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                buildDescContainer(context, 1),
                SizedBox(
                  height: 2,
                ),
                buildDescContainer(context, 2),
                SizedBox(
                  height: 2,
                ),
                buildDescContainer(context, 3),
              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(18),
                child: Text(
                  "TEZ-TEZ verİlən suallar".toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )),
            Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    color: Colors.white,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      height: 200,
                      margin: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 1.2,
                                height: 45,
                                child: Text(
                                  "Hansı qidalar  bədənimizdə allerjik reaksiyalar verə bilər?",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Icon(
                                Icons.minimize,
                                color: defaultColor,
                              )
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 120,
                            child: Text(
                              "Lorem ipsum dolor sit amet, "
                              "consectetur adipiscing elit. Lacus sed eleifend eu tortor porta. Ut nisl, cursus interdum pulvinar orci varius. Aliquet justo dolor in bibendum porta adipiscing vivamus. "
                              "Integer venenatis sapien, lectus maecenas dui non ut. Aliquet justo dolor in bibendum",
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                    )),
                SizedBox(height: 2,),
                buildQuestionsContainer(context,"A Lipsum bir model və ya bir web final mətn olmadığı bir əvəz kimi istifadə mətn. "),
                SizedBox(height: 2,),
                buildQuestionsContainer(context,"Hansı qidalar  bədənimizdə allerjik reaksiyalar verə bilər?"),
                SizedBox(height: 2,),
                buildQuestionsContainer(context,"A Lipsum bir model və ya bir web final mətn olmadığı bir əvəz kimi istifadə mətn. "),
                SizedBox(height: 2,),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Rectangle 374.png"),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }

  Container buildQuestionsContainer(BuildContext context, String question) {
    return Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 70,
                        child: Center(
                            child: Text(
                                "$question",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                        ),
                      ),
                      Center(
                        child: Icon(Icons.add,color: defaultColor,),
                      )
                    ],
                  ),
                ),
              );
  }

  Container buildDescContainer(BuildContext context, int number) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.red[800],
                borderRadius: BorderRadius.circular(30)),
            child: Center(
                child: Text(
              "$number",
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.center,
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width - 100,
            child: Text(
              "A Lipsum bir model və ya bir web final mətn olmadığı bir əvəz kimi istifadə mətn. "
              "Lipsum ən məşhur alternativ mətnlərin daralma gəlir: "
              " Lorem ipsum. Mətn Bu da mətn əvəz mətn doldurmaq, yalan, ağ mətn, saxta mətn adlanır.",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
