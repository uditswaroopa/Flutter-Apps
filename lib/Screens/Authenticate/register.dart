import 'package:flutter/material.dart';
import 'package:quotes/services/auth.dart';

class Register extends StatefulWidget {
  final Function toogle;
  Register({this.toogle});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  AuthService _user = AuthService();
  String pass = '', email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTER'),
        actions: [
          FlatButton.icon(
            onPressed: () => widget.toogle(),
            icon: Icon(Icons.person),
            label: Text('Register'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox(height: 5),
                TextFormField(
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                ),
                SizedBox(height: 15),
                TextFormField(
                  obscureText: true,
                  onChanged: (val) {
                    setState(() {
                      pass = val;
                    });
                  },
                ),
                SizedBox(height: 25),
                RaisedButton(
                    child: Text('REGISTER'),
                    onPressed: () {
                      print(email);
                      print(pass);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
