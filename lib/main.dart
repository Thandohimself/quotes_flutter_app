import 'package:flutter/material.dart';
import 'QuoteCard.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Bob',
        text: 'The only thing that comes to a sleeping man is dreams.'),
    Quote(author: 'Max', text: 'During your life, never stop dreaming. '),
    Quote(author: 'Pac', text: 'Is it a crime, to fight, for what is mine?')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('Great Quotes'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent[100],
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete:(){
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}

