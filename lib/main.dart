import 'package:flutter/material.dart';
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

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            )
          ],
        ),
      ),
    );
  }

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
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
