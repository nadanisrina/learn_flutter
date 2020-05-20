import 'package:flutter/material.dart';
import 'Quotes.dart';
import 'card.dart';
import 'choose_location.dart';
import 'home.dart';
import 'location.dart';
import 'Loading.dart';

void main() => runApp(QuoteList());

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quotes> quotes = [
    Quotes(author:'nada',text:'quotes1'),
    Quotes(author:'nisrina',text:'quotes2'),
    Quotes(author:'septiana',text:'quotes3')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/home',
        routes: {
          '/' : (context) => Loading(),
          '/home' : (context) => Home(),
          '/location' : (context) => Location()
        },
        home: Scaffold(
          body : Container(
            child: Column(
              children: <Widget>[
                Column(
                    children: quotes.map((quote) => QuotesCard(
                        quote: quote,
                        delete: (){
                          setState(() {
                            quotes.remove(quote);
                          });
                        }
                    )).toList()
                ),
              ],
            ) ,
          ),
        )
    );
  }
}

