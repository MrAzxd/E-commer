import 'package:ecommerceapp1/mouse.dart';
import 'package:ecommerceapp1/sun_glass.dart';
import 'package:flutter/material.dart';

class thanks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('thanks for shopping')),
        body: Container(
          color: Colors.grey,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigate to the new screen when the image is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => mouse()),
                  );
                },
                child: Container(
                  height: 500,
                  width: 800,
                  child: Image.asset('assets/images/thank3.gif'),
                ),
              ),

              // Container(
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage(
              //           'assets/images/thank3.gif'), // Provide your image path
              //       fit: BoxFit.cover, // Adjust the image fitting
              //     ),
              //   ),
              // ),
              Container(
                height: 60,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => sun_glass(), // Navigate to the
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('  Click me   '),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
