import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        body: Column(
          children: <Widget>[
            FlatButton.icon(
              onPressed: () => Navigator.pushNamed(context,'/'), 
              icon: Icon(Icons.location_on),
              label: Text('Location On'),
            )
          ]
        )
    );
  }
}