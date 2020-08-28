import 'package:flutter/material.dart';
import 'package:quotes/services/auth.dart';
import 'package:quotes/shared/loading.dart';

class SignIn extends StatefulWidget {
  final Function toogle;
  SignIn({this.toogle});
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  AuthService _user = AuthService();
  final _key = GlobalKey<FormState>();
  bool loading = false;
  String pass = '', email = '';
  String error = '';
  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      appBar: AppBar(
        title: Text('SIGN IN'),
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
            key: _key,
            child: Column(
              children: <Widget>[
                SizedBox(height: 5),
                TextFormField(
                  validator: (value) => value.isEmpty ? 'Enter Email' : null,
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                ),
                SizedBox(height: 15),
                TextFormField(
                  validator: (value) => value.isEmpty ? 'Enter Password' : null,
                  obscureText: true,
                  onChanged: (val) {
                    setState(() {
                      pass = val;
                    });
                  },
                ),
                SizedBox(height: 25),
                RaisedButton(
                  child: Text('Sign In'),
                  onPressed: () async {
                    setState(() => loading = true);
                    if (_key.currentState.validate()) {
                      dynamic result =
                          await _user.signInEmailPassword(email, pass);
                      if (result == null){
                        setState(() {
                          loading = false;
                          error = 'Incorrect password or username';
                        });
                      }
                    }
                  },
                ),
                SizedBox(height: 10),
                Text(error,style: TextStyle(color: Colors.redAccent[400], fontSize: 16.0),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
