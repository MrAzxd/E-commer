import 'package:flutter/material.dart';
import 'thanks.dart';

class payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('payment screen'),
      ),
      body: Container(
          color: Colors.grey,
          child: Column(
            children: [
              Container(
                height: 50,
              ),
              Text(
                'choice payment option',
                style: const TextStyle(
                  color: Colors.black26,
                  fontSize: 50,
                ),
              ),
              Container(
                height: 80,
              ),
              Container(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => select(), // Navigate to the payment
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('  bank   '),
                  ],
                ),
              ),
              Container(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => select(), // Navigate to the payment
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('  VISA CARD  '),
                  ],
                ),
              ),
              Container(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => select(), // Navigate to the payment
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('  easypisa   '),
                  ],
                ),
              ),
            ],
          )),
      // ... Your sign up content here
    );
  }
}

class select extends StatefulWidget {
  @override
  State<select> createState() => _selectState();
}

class _selectState extends State<select> {
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('payment'),
      ),
      body: Center(
        child: Container(
          width: 500,
          color: Colors.blueGrey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Text(
                  'HAPPY SHOPPING',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.amber,
                  ),
                ),
              ),
              Container(
                height: 17,
              ),
              TextField(
                decoration: InputDecoration(
                  //  suffixText: AutofillHints.name,
                  hintText: 'Enter number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21)),
                ),
              ),

              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => HomeScreen()),
              //     );
              //   },
              //   child: Text('Pay now'),
              // ),
              Container(
                height: 89,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => thanks()),
                  );
                },
                child: Text(' pay now   '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
