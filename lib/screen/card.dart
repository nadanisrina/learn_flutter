import 'package:flutter/material.dart';
import 'Quotes.dart';
import 'dart:ui';

class QuotesCard extends StatelessWidget {
  final Quotes quote;
  final Function delete;
  QuotesCard({this.quote,this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                quote.text,
                style: TextStyle(
                  fontSize: 18,
                )
            ),
            Text(
                '${quote.author}',
                style: TextStyle(
                  fontSize: 18,
                )
            ),
            FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('delete')
            )
          ],
        ),
      ),
    );
  }
}

