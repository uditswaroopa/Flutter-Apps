import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Ninja Card'),
          backgroundColor: Colors.grey[850],
          centerTitle: true,
          elevation: 1.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){ 
            setState(() {
            level++;
            });
          }, 
          backgroundColor: Colors.grey[800],
          child: Icon(Icons.add)
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(30,40,30,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://displate.com/avatars/2019-06-14/87dca00a2286ef1c7436f68472cb4758.jpg'),
                  radius: 50,
                ),
              ),

              Divider(
                height: 90.0,
                color: Colors.grey,
              ),

              Text('NAME',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 10.0,
                  letterSpacing: 2.0
                ),
              ),
              
              Text('Udit Swaroopa',
                style: TextStyle(
                  color: Colors.yellow[800],
                  fontSize: 30.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20),
              Text('LEVEL',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 10.0,
                  letterSpacing: 2.0
                ),
              ),

              Text('$level',
                style: TextStyle(
                  color: Colors.yellow[800],
                  fontSize: 30.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.contact_mail,
                    color: Colors.grey,
                  ),
                  SizedBox(width:10),
                  Text('uditswaroopa@icloud.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 15.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),                  
                ],
              ),
            ],
          ),
        ) 
      ),      
    );
  }
}
