import 'package:flutter/material.dart';
import 'package:quotes/services/auth.dart';
import 'package:quotes/shared/loading.dart';

class Register extends StatefulWidget {
  final Function toogle;
  Register({this.toogle});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  AuthService _user = AuthService();
  final _key = GlobalKey<FormState>();
  bool loading = false;
  String pass = '', email = '' , error = '';
  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      appBar: AppBar(
        title: Text('REGISTER'),
        actions: [
          FlatButton.icon(
            onPressed: () => widget.toogle(),
            icon: Icon(Icons.person),
            label: Text('Sign In'),
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
                  validator: (value) => value.length < 8  ? 'Password must contain 8 characters or more' : null,
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
                  onPressed: () async {
                    setState(() => loading = true);
                    if(_key.currentState.validate()){
                      dynamic result = _user.registerWithEmailAndPassword(email,pass);
                      if(result == null){
                        setState(() {
                          loading = false;
                          error = 'Incorrect mail ID';
                        }); //cause firebase checks for valid email
                      }
                    }
                  },
                ),
                SizedBox(height: 10),
                Text(error,style: TextStyle(color: Colors.redAccent[400], fontSize: 16.0),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
