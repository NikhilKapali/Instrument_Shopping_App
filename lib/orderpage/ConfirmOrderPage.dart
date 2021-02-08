import 'package:flutter/material.dart';
import 'package:shopping_app/StylesScheme.dart';
import 'TrackOrderPage.dart';

class ConfirmOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: confirmOrderPage(),
    );
  }
}

class confirmOrderPage extends StatefulWidget {
  @override
  _confirmOrderPageState createState() => _confirmOrderPageState();
}

class _confirmOrderPageState extends State<confirmOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          tooltip: 'Go Back?',
        ),
        title: Text(
          "CONFIRM YOUR ORDER BITCHH!!!!",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            tooltip: 'Your Notifications',
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/onBoard2.png"),
              )),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Arigatauu for choosing Warera",
              style: headingStyle,
            ),
            Text(
              "Your order has been placed and Deliver Your weapon ON TIME!!",
              style: contentStyle,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order ID",
                  style: headingStyle,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: gradientStyle,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    "1001",
                    style: headingStyle.copyWith(color: Colors.white),
                  ),
                )
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Weapon Count",
                  style: headingStyle,
                ),
                Text(
                  "5",
                  style: headingStyle.copyWith(color: Colors.white),
                ),
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Final Amount",
                  style: headingStyle,
                ),
                Text(
                  "\$1400",
                  style: headingStyle.copyWith(color: Colors.white),
                ),
              ],
            ),
            divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pick up Date & time",
                  style: headingStyle,
                ),
                Text(
                  "Wed, 08 Feb, 2021. 10:00 AM to 12:00 PM",
                  style:
                      contentStyle.copyWith(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment Method",
                  style: headingStyle,
                ),
                Text(
                  "Cash",
                  style: headingStyle.copyWith(color: Colors.white),
                ),
              ],
            ),
            Expanded(child: Container()),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TrackOrderPage()));
              },
              child: Container(
                padding: EdgeInsets.all(20),
                height: 70,
                decoration: BoxDecoration(
                  gradient: gradientStyle,
                ),
                child: Center(
                  child: Text(
                    "TRACK ORDER BITCHH??",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      height: 1,
      color: Colors.grey,
    );
  }
}
