import 'package:flutter/material.dart';
import 'package:quotes/pages/home.dart';
import 'package:quotes/pages/loading.dart';
import 'package:quotes/pages/location.dart';
void main() => runApp(
  MaterialApp(
  initialRoute: '/',
  routes: {
    '/' : (context) => Loading(),
    '/home' : (context) => Home(),
    '/location' : (context) => Location()
  },
));