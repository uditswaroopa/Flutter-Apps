import 'package:flutter/material.dart';
import 'package:quotes/services.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  
  String time = 'loading';

  void setTime() async {
    WorldTime t = WorldTime(location: 'Kolkata',url: 'Asia/Kolkata',flag: 'India.png');
    await t.getTime();
    setState(() {
      time = t.time;
    });
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location' : t.location,
      'flag': t.flag,
      'time': t.time,
    });
  }

  @override
  void initState() {
    super.initState();
    setTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text(time),
        ),
    );
  }
}