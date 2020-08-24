import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quotes/Screens/Authenticate/authenticate.dart';
import 'package:quotes/Screens/Home/home.dart';
import 'package:quotes/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    if(user == null)
      return Authenticate();
    else
      return Home();
  }
}