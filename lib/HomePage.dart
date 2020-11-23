import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DetailScreen.dart';

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
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    CupertinoIcons.arrow_down,
                    color: Colors.black45,
                    size: 15,
                  ),
                  Text(
                    '120 Beach Ave.',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    width: 210,
                  ),
                  Icon(CupertinoIcons.equal),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Food Delivery',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cusines',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      _round(
                          CupertinoIcons.map_pin_ellipse, Colors.yellowAccent),
                      SizedBox(
                        height: 5,
                      ),
                      _text('Chinese')
                    ],
                  ),
                  Column(
                    children: [
                      _round(CupertinoIcons.map_pin_ellipse, Colors.white),
                      SizedBox(
                        height: 5,
                      ),
                      _text('Italian')
                    ],
                  ),
                  Column(
                    children: [
                      _round(CupertinoIcons.map_pin_ellipse, Colors.white),
                      SizedBox(
                        height: 5,
                      ),
                      _text('American')
                    ],
                  ),
                  Column(
                    children: [
                      _round(CupertinoIcons.map_pin_ellipse, Colors.white),
                      SizedBox(
                        height: 5,
                      ),
                      _text('Mexican')
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Best in Los Angeles',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                '2,500 resturants in Los Angeles',
                style: TextStyle(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Platform.isIOS
                      ? Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => DetailScreen()))
                      : Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen()));
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Hero(
                      tag: 'omo',
                      child: Image.asset(
                        'assets/images/3.jpg',
                        fit: BoxFit.cover,
                        width: 400,
                        height: 200,
                      ),
                    )),
              ),
              ListTile(
                  trailing: Text('&&'),
                  title: Text(
                    "Charle's Burger",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(CupertinoIcons.star),
                      SizedBox(
                        width: 5,
                      ),
                      Text('4.5'),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(CupertinoIcons.timer),
                      SizedBox(
                        width: 5,
                      ),
                      Text('25-40minutes'),
                    ],
                  )),
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    'assets/images/4.jpg',
                    fit: BoxFit.cover,
                    width: 400,
                    height: 200,
                  )),
              ListTile(
                  trailing: Text('&&'),
                  title: Text(
                    "Gbolahan's Lettuce",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(CupertinoIcons.star),
                      SizedBox(
                        width: 5,
                      ),
                      Text('3.5'),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(CupertinoIcons.timer),
                      SizedBox(
                        width: 5,
                      ),
                      Text('20-30minutes'),
                    ],
                  ))
            ],
          ),
        ),
      )),
      bottomNavigationBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
            CupertinoIcons.home,
            size: 20,
            color: Colors.brown,
          )),
          BottomNavigationBarItem(
              icon: Icon(
            CupertinoIcons.search,
            size: 20,
            color: Colors.grey,
          )),
          BottomNavigationBarItem(
              icon: Icon(
            CupertinoIcons.shopping_cart,
            size: 20,
            color: Colors.grey,
          )),
          BottomNavigationBarItem(
              icon: Icon(
            CupertinoIcons.person,
            size: 20,
            color: Colors.grey,
          )),
        ],
      ),
    );
  }

  Widget _round(IconData icon, Color color) {
    return Container(
      width: 50,
      height: 50,
      child: Center(
          child: Icon(
        icon,
        color: Colors.brown,
      )),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: color),
    );
  }

  Widget _text(String title) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 11, color: Colors.black, fontWeight: FontWeight.w500),
    );
  }
}
