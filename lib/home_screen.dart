import 'package:ecommerceapp1/dell.dart';
import 'package:ecommerceapp1/hp.dart';
import 'package:ecommerceapp1/main.dart';
import 'package:ecommerceapp1/sun_glass.dart';
import 'package:ecommerceapp1/watches.dart';
import 'package:flutter/material.dart';
import 'mouse.dart';
import 'payment.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            // height: 1000,
            // width: 600,
            color: Colors.amberAccent,
            child: Column(children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 80,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                mans(), // Navigate to the CatalogScreen
                          ),
                        );
                      },
                      child: Text('        MANSUITE      '),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                dell(), // Navigate to the SignUpScreen
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('  DELL   '),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                watches(), // Navigate to the SignUpScreen
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('watch'),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                hp(), // Navigate to the SignUpScreen
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('  HP   '),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                sun_glass(), // Navigate to the SignUpScreen
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('  Sunglases   '),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                mouse(), // Navigate to the SignUpScreen
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('  mouse   '),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black26,
                height: 10,
              ),
              SizedBox(
                height: 30,
              ),

// products are added here

              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the new screen when the image is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/watch.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Mans Watch',
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          ),
                        ],
                      ),
                      Text(
                        'this is an watch with leather belt',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      SizedBox(
                        height: 69,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            ' PRICE 8\$',
                            style: TextStyle(
                                color: Color.fromARGB(255, 252, 17,
                                    1), //fromARGB(255, 230, 54, 1),
                                fontSize: 20,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => payment()),
                          );
                        },
                        child: Text('              Buy Now              '),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black26,
                    height: 10,
                  ),
                ],
              ),

              Divider(
                color: Colors.black26,
                height: 10,
              ),

              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the new screen when the image is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/dress1.jpg'),
                    ),
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            'GRILS DRESS',
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          ),
                        ],
                      ),
                      Text(
                        "THIS is cotton drees brand name gul ahmed  ",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Text(
                        "  BETTER DREES ALL SIZE IS AVAIABLE  ",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      SizedBox(
                        height: 69,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            ' PRICE 22\$',
                            style: TextStyle(
                                color: Color.fromARGB(255, 252, 17,
                                    1), //fromARGB(255, 230, 54, 1),
                                fontSize: 20,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => payment()));
                        },
                        child: Text('              Buy Now              '),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black26,
                    height: 10,
                  ),
                ],
              ),

              Divider(
                color: Colors.black26,
                height: 10,
              ),

              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the new screen when the image is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/sunglass1.jpg'),
                    ),
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Mans sunglass',
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          ),
                        ],
                      ),
                      Text(
                        'this is orginal sun glass check by offcials ',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      SizedBox(
                        height: 69,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            ' PRICE 5\$',
                            style: TextStyle(
                                color: Color.fromARGB(255, 252, 17,
                                    1), //fromARGB(255, 230, 54, 1),
                                fontSize: 20,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => payment()),
                          );
                        },
                        child: Text('              Buy Now              '),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black26,
                    height: 10,
                  ),
                ],
              ),

              Divider(
                color: Colors.black26,
                height: 10,
              ),

              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the new screen when the image is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/mobile1.jpg'),
                    ),
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Iphone 14 plus',
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          ),
                        ],
                      ),
                      Text(
                        'this is iphone 14 plus with PTA approved ',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      SizedBox(
                        height: 69,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            ' PRICE 220\$',
                            style: TextStyle(
                                color: Color.fromARGB(255, 252, 17,
                                    1), //fromARGB(255, 230, 54, 1),
                                fontSize: 20,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => payment()),
                          );
                        },
                        child: Text('              Buy Now              '),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black26,
                    height: 10,
                  ),
                ],
              ),

              Divider(
                color: Colors.black26,
                height: 10,
              ),

              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigate to the new screen when the image is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/watch1.jpg'),
                    ),
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Mans Watch',
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          ),
                        ],
                      ),
                      Text(
                        'this is an watch with leather belt',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      SizedBox(
                        height: 69,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            ' PRICE 12\$',
                            style: TextStyle(
                                color: Color.fromARGB(255, 252, 17,
                                    1), //fromARGB(255, 230, 54, 1),
                                fontSize: 20,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => payment()),
                          );
                        },
                        child: Text('              Buy Now              '),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black26,
                    height: 10,
                  ),
                ],
              ),

              Divider(
                color: Colors.black26,
                height: 10,
              ),
            ]),
          ),
        ),
      ),
      // ... Your home content here
    );
  }
}
