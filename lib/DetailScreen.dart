import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(
                      CupertinoIcons.chevron_back,
                      color: Colors.black,
                      size: 15,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Icon(
                    CupertinoIcons.arrow_down,
                    color: Colors.black45,
                    size: 15,
                  ),
                  Container(
                    width: 115,
                    height: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        color: Colors.grey[200]),
                    child: Center(
                      child: Text(
                        '120 Beach Ave.',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Icon(
                    CupertinoIcons.heart,
                    size: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ClipRRect(
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
              SizedBox(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Charle's Burger",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(CupertinoIcons.money_dollar)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                ),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.star,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('4.5'),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      CupertinoIcons.timer,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('25-40minutes'),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              DefaultTabController(
                  initialIndex: 0,
                  length: 3,
                  child: TabBar(
                    indicatorColor: Colors.brown,
                    tabs: [
                      Tab(
                        child: Text(
                          'Popular Items',
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        // text: 'Following',
                      ),
                      Tab(
                        child: Text(
                          "Kids's Meal",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        // text: 'Following',
                      ),
                      Tab(
                        child: Text(
                          'Family Meal',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        // text: 'Following',
                      )
                    ],
                  )),
              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      'assets/images/1.jpg',
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    )),
                title: Text(
                  'Freki Burgers',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  '&15',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                trailing: Container(
                  width: 70,
                  height: 30,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        CupertinoIcons.add,
                        size: 15,
                        color: Colors.black,
                      ),
                      Text(
                        'Add',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white),
                ),
              ),
              ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      'assets/images/2.jpg',
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    )),
                title: Text(
                  'Mini Burgers',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  '&25',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                trailing: Container(
                  width: 70,
                  height: 30,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        CupertinoIcons.add,
                        size: 15,
                        color: Colors.black,
                      ),
                      Text(
                        'Add',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white),
                ),
              ),
              ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      'assets/images/3.jpg',
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    )),
                title: Text(
                  'Big Burgers & Coke',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  '&45',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                trailing: Container(
                  width: 70,
                  height: 30,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        CupertinoIcons.add,
                        size: 15,
                        color: Colors.black,
                      ),
                      // SizedBox(
                      //   width: 2,
                      // ),
                      Text(
                        'Add',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white),
                ),
              ),
              ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset(
                      'assets/images/4.jpg',
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    )),
                title: Text(
                  'Chicken Lettuce Wrap',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  '&10',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                trailing: Container(
                  width: 70,
                  height: 30,
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        CupertinoIcons.add,
                        size: 15,
                        color: Colors.black,
                      ),
                      // SizedBox(
                      //   width: 2,
                      // ),
                      Text(
                        'Add',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                height: 50,
                child: RaisedButton(
                    color: Colors.brown,
                    textColor: Colors.white,
                    child: Text(
                      'Add To Cart',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    onPressed: () {}),
              )
            ],
          ),
        ),
      )),
    );
  }
}
