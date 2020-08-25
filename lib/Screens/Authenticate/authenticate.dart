import 'package:flutter/material.dart';
import 'package:quotes/Screens/Authenticate/register.dart';
import 'package:quotes/Screens/Authenticate/sigin.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool isSignIn = true;

  void toogle(){
    setState(() {
      if(isSignIn)
        isSignIn = false;
      else
        isSignIn = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(isSignIn)
      return SignIn(toogle: toogle);
    else
      return Register(toogle: toogle);
  }
}