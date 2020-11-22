import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_downward_outlined,
                  color: Colors.black45,
                  size: 15,
                ),
                Text(
                  '120 Beach Ave.',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w300),
                ),
                Icon(Icons.menu),
              ],
            ),
            Text('Food Delivery')
          ],
        ),
      )),
    );
  }
}
