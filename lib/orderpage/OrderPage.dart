import 'package:flutter/material.dart';
import 'package:shopping_app/StylesScheme.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: orderPage(),
    );
  }
}

class orderPage extends StatefulWidget {
  @override
  _orderPageState createState() => _orderPageState();
}

class _orderPageState extends State<orderPage> {
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
          "ORDER YOUR SHIT",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [IconButton(icon: Icon(Icons.notifications))],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                categoryWidget("guitar", "Guitar", true),
                categoryWidget("drum", "Drums", false),
                categoryWidget("bass", "Bass", false),
                categoryWidget("mic", "Others", false),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    productWidget("product1", "Guitar 1", "400"),
                    productWidget("product2", "Guitar 2", "500"),
                    productWidget("product3", "Guitar 3", "200"),
                    productWidget("product4", "Guitar 4", "400"),
                    productWidget("product5", "Guitar 5", "600"),
                    productWidget("product6", "Guitar 6", "700"),
                    productWidget("product7", "Guitar 7", "550"),
                    productWidget("product1", "Guitar 8", "400"),
                    productWidget("product2", "Guitar 9", "500"),
                    productWidget("product3", "Guitar 10", "200"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container productWidget(String img, String name, String price) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/$img.png"),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: headingStyle,
                    ),
                    Text(
                      "\$price",
                      style: headingStyle.copyWith(color: Colors.grey),
                    ),
                    Text(
                      "Add Note",
                      style: contentStyle.copyWith(color: Colors.indigo[900]),
                    ),
                  ],
                ),
                Text(
                  "\$1200",
                  style: headingStyle,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        gradient: gradientStyle,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "-",
                          style: headingStyle.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      child: Center(
                        child: Text(
                          "1",
                          style: headingStyle.copyWith(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        gradient: gradientStyle,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "+",
                          style: headingStyle.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column categoryWidget(String img, String name, bool isActive) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: (isActive) ? null : Colors.grey.withOpacity(0.3),
            gradient: (isActive) ? gradientStyle : null,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/$img.png"),
                    fit: BoxFit.contain),
              ),
            ),
          ),
        ),
        Text(
          name,
          style: headingStyle,
        ),
      ],
    );
  }
}
