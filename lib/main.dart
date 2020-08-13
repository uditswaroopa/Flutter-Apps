import 'package:flutter/material.dart';
import 'package:quotes/Card.dart';
import 'package:quotes/quotes.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        backgroundColor: Colors.grey[100],
        appBar: AppBar(title: Text('Quotes')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes
              .map(
                (e) => QuoteCard(
                  quote: e,
                  delete: () {
                    setState(() {
                      quotes.remove(e);
                    });
                  },
                ),
              ).toList(),
        ),
      ),
    );
  }
}
