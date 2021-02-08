import 'package:flutter/material.dart';

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
    );
  }
}
