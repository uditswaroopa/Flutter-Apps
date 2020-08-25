import 'package:flutter/material.dart';
import 'package:quotes/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  AuthService _user = AuthService();
  String pass = '', email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SIGN IN')),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          child: Form(
              child: Column(children: <Widget>[
            SizedBox(height: 5),
            TextFormField(
              onChanged: (val) {
                setState(() {
                  email = val;
                });
              },
            ),
            SizedBox(height: 15),
            TextFormField(
              obscureText: true,
              onChanged: (val) {
                setState(() {
                  pass = val;
                });
              },
            ),
            SizedBox(height: 25),
            RaisedButton(
                child: Text('Sign In'),
                onPressed: () {
                  print(email);
                  print(pass);
                })
          ])),
        ),
      ),
    );
  }
}
