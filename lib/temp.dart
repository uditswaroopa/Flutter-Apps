
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int v = 0;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){
        setState(() {
          v++;
        });
      }
    );
  }
}