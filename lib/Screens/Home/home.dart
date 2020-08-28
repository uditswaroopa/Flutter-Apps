import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotes/Screens/Home/brewlist.dart';
import 'package:quotes/services/auth.dart';
import 'package:quotes/services/database.dart';


class Home extends StatelessWidget {
  final AuthService _auth =  AuthService();
  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot>.value(
        value: DatabaseService().brewstream,
        child: Scaffold(
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
        body: BrewList(),
      ),
    );
  }
}