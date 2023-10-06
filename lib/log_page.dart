import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'sign_up.dart';

class LogPage extends StatefulWidget {
  @override
  State<LogPage> createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('LogIn'),
      ),
      body: Center(
        child: Container(
          width: 500,
          color: Colors.blueGrey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'WELCOME',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.amber,
                ),
              ),
              Container(
                height: 17,
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
                  hintText: 'password',
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
                child: Text('LogIn'),
              ),
              Container(
                height: 89,
              ),
              Row(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Forgot Password'),
                  ),
                  Container(
                    width: 110,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => signUp(),
                        ),
                      );
                    },
                    child: Text('    Sign Up    '),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
