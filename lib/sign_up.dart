import 'home_screen.dart';
import 'log_page.dart';
import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  // const signUp({super.key, required this.title});

  // final String title;

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Sign Up'),
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
                  'WELCOME',
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
                  hintText: 'Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21)),
                ),
              ),
              Container(
                height: 11,
              ),
              TextField(
                controller: emailText,
                decoration: InputDecoration(
                  //  suffixText: AutofillHints.name,
                  hintText: 'abc123@gmail.com',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21)),
                ),
              ),
              Container(
                height: 11,
              ),
              TextField(
                controller: passText,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: ' Password',
                  // backgroundColor:Colors.white54,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21)),
                ),
              ),
              Container(
                height: 55,
              ),
              ElevatedButton(
                onPressed: () {
                  String uEmail = emailText.text.toString();
                  String uPass = passText.text;
                  print("Email: $uEmail, pass: $uPass");

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text('SIGN UP'),
              ),
              Container(
                height: 89,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LogPage()),
                  );
                },
                child: Text(' LOg In   '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
