import 'package:flutter/material.dart';
import 'package:quotes/quotes.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Widget quoteTempelate(quote) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            quote.q,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
              color: Colors.grey[900]
            ),
          ),
          SizedBox(height: 15),
          Text(quote.author,
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w900,
              color: Colors.grey[900]
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    ));
  }

  List<Quotes> quotes = [
    Quotes(q: 'Hre Krsna Hre Krsna Krsna Krsna Hre Hre', author: 'C. Prabhu'),
    Quotes(q: 'Hare Rama Hare Rama Rama Rama Hare Hare', author: 'C. Prabhu'),
    Quotes(q: 'Just do the best you can', author: 'Oscar Wilde'),
    Quotes(q: 'Expect the best', author: 'Oscar Wilde'),
    Quotes(q: 'I have the simplest tastes', author: 'Oscar Wilde')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quotes')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes.map((e) => quoteTempelate(e)).toList(),
        ),
      ),
    );
  }
}
