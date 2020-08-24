import 'package:flutter/material.dart';
import 'package:quotes/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  AuthService _user = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SIGN IN')),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: RaisedButton(
          onPressed: () async {
            dynamic result = await _user.signInAnon();
            if(result == null)
              print('Error signing in');
            else
              print(result);
              print(result.uid);
          },
          child: Text('Sign In Anonymously'),
          color: Colors.grey[800],
          textColor: Colors.white70,
        )
      ),
    );
  }
}