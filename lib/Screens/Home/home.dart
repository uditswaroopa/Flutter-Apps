import 'package:flutter/material.dart';
import 'package:quotes/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth =  AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: (){
              _auth.logOut();
            }, 
            icon: Icon(Icons.person),
            label: Text(''),
          ),
        ] 
      ),
    );
  }
}