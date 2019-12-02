import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    'The only thing that comes to a sleeping man is dreams.',
    'During your life, never stop dreaming. ',
    'Is it a crime, to fight, for what is mine?'

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
        children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}
