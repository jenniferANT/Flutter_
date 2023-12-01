import 'package:flutter/material.dart';
import 'quote.dart';
import 'quotecard.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Jennifer', text: 'Nguyen Huynh Duyen'),
    Quote(author: 'Andy', text: 'Tran An Duy'),
    Quote(author: 'August', text: 'Hoang Thanh Phuong'),
    Quote(author: 'Cho Hoang',text: 'Tai sao lai la con cho'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          
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

