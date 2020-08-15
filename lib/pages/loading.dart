import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  
  void getData() async{
    Response r = await get('https://jsonplaceholder.typicode.com/todos/1');
    Map data = jsonDecode(r.body);
    print(data);
    print(data['title']);
  }
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text('Loadin Page'),
    );
  }
}