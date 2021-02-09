import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shopping_app/StylesScheme.dart';
import 'ConfirmOrderPage.dart';

class PickUpTimePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pickupTimePage(),
    );
  }
}

class pickupTimePage extends StatefulWidget {
  @override
  _pickupTimePageState createState() => _pickupTimePageState();
}

class _pickupTimePageState extends State<pickupTimePage> {
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
          "PLACE YOUR LOCATION & TIME BITCHH!!!!",
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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Pick Up Date",
                style: headingStyle,
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    dateWidget("Wed", "08 FEB", true),
                    dateWidget("Thu", "09 FEB", false),
                    dateWidget("Fri", "10 FEB", false),
                    dateWidget("Sun", "12 FEB", false),
                    dateWidget("Mon", "13 FEB", false),
                    dateWidget("Tue", "14 FEB", false),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Pick Up Time",
                style: headingStyle,
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    timeWidget("10:00 AM to 12:00 PM", false),
                    timeWidget("12:00 PM to 02:00 PM", true),
                    timeWidget("02:00 PM to 04:00 PM", false),
                    timeWidget("04:00 PM to 06:00 PM", false),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Delivery Date",
                style: headingStyle,
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    dateWidget("Wed", "15 FEB", true),
                    dateWidget("Thu", "16 FEB", false),
                    dateWidget("Fri", "17 FEB", false),
                    dateWidget("Sun", "18 FEB", false),
                    dateWidget("Mon", "19 FEB", false),
                    dateWidget("Tue", "20 FEB", false),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Delivery Time",
                style: headingStyle,
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    timeWidget("10:00 AM to 12:00 PM", false),
                    timeWidget("12:00 PM to 02:00 PM", true),
                    timeWidget("02:00 PM to 04:00 PM", false),
                    timeWidget("04:00 PM to 06:00 PM", false),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment Amount",
                    style: headingStyle,
                  ),
                  Text(
                    "\$1400",
                    style: headingStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConfirmOrderPage()));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: gradientStyle,
                  ),
                  child: Center(
                    child: Text(
                      "PLACE ORDER BITCHH??",
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
      ),
    );
  }

  Container timeWidget(String time, bool isActive) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: (isActive) ? Colors.indigo[500] : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: contentStyle.copyWith(
                color: (isActive) ? Colors.white : Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }

  Container dateWidget(String day, String date, bool isActive) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: (isActive) ? Colors.indigo[500] : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
            style: contentStyle.copyWith(
                color: (isActive) ? Colors.white : Colors.black, fontSize: 20),
          ),
          Text(
            date,
            style: contentStyle.copyWith(
                color: (isActive) ? Colors.white : Colors.black, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
