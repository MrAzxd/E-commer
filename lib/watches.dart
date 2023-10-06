import 'package:ecommerceapp1/dell.dart';
import 'package:ecommerceapp1/hp.dart';
import 'package:ecommerceapp1/main.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'mouse.dart';
import 'payment.dart';
import 'sun_glass.dart';

class watches extends StatelessWidget {
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
                            builder: (context) => watches(), // Navigate to the
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('  WATCHES   '),
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
                            builder: (context) => dell(), // Navigate to the
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('DELL'),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => hp(), // Navigate to the
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
                                sun_glass(), // Navigate to the
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('  SUNGLASSES   '),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mouse(),
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
                        MaterialPageRoute(builder: (context) => watches()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/watch2.jpg'),
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
                        MaterialPageRoute(builder: (context) => watches()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/watch3.jpg'),
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
                            ' PRICE 2\$',
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
                      child: Image.asset('assets/images/watch4.jpg'),
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
                            ' PRICE 6\$',
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
                      child: Image.asset('assets/images/watch4.jpg'),
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
                            ' PRICE 3\$',
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
