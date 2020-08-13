import 'package:flutter/material.dart';
import 'package:quotes/quotes.dart';

class QuoteCard extends StatelessWidget {
  final Quotes quote;
  final Function delete;

  QuoteCard({this.quote,this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10,2,2,10),
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
          FlatButton.icon(
            onPressed: delete,
            label: Text('DELETE'),
            icon: Icon(Icons.delete),
          )
        ],
      ),
    ));
  }
}