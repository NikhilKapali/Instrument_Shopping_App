import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopping_app/StylesScheme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        title: Text(
          "GUITAR MINE",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [IconButton(icon: Icon(Icons.notifications))],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("HIGHWAY TO HELL", style: headingStyle),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Jam With Us and get \nA new instrument",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/guitarPlaying.jpg')),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "SERVICES",
              style: headingStyle,
            ),
            Container(
              height: 200,
              color: Color(0xfff1ffff),
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/guitar.png")),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "PLAY SOMETHING",
                            style: headingStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: gradientStyle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: Text(
                                "Wanna Order?",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              color: Color(0xfff1ffff),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "AVAILABILITY",
                        style: contentStyle,
                      ),
                      Text(
                        "Available",
                        style: contentStyle.copyWith(
                          color: Colors.indigo[900],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("We are available when ever you want us to be brother"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              color: Color(0xfff1ffff),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CHECK THE ESTIATION",
                    style: contentStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "You can check time estimation with prices",
                    style: contentStyle,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    gradient: gradientStyle,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    "+",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
