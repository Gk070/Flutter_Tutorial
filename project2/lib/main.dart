import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(
    MaterialApp(
      home: QuoteList(),
    )
);

class QuoteList extends StatefulWidget{
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList>{
  List<Quote> quotes = [
    Quote('We cannot solve problems with the kind of thinking we employed when we came up with them.', 'Albert Einstein'),
    Quote('Learn as if you will live forever, live like you will die tomorrow.', 'Mahatma Gandhi'),
    Quote('Stay away from those people who try to disparage your ambitions. Small minds will always do that, but great minds will give you a feeling that you can become great too.', 'Mark Twain')
  ];

  Widget quoteTemplate({required Quote quote, required Function delete}){
    return Card(
      margin: EdgeInsets.fromLTRB(15.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600]
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextButton.icon(
              onPressed: () {
                delete();
              },
              label: Text(
                  "Delete Quote"
              ),
              icon: Icon(
                Icons.delete,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
            "Awesome Quotes"
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}