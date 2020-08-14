import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            FlatButton.icon(
              onPressed: () => Navigator.pushNamed(context,'/location'), 
              icon: Icon(Icons.location_on),
              label: Text('Location On'),
            )
          ]
        )
    );
  }
}