import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
 
  final Quote quote;
  final void Function() delete;
  QuoteCard ({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(

        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8.0,),
            TextButton(
              onPressed: delete ,
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Center(
                  child: Row(
                    children: [
                      Icon(Icons.delete), // Thay đổi biểu tượng theo ý muốn
                      Text(
                        'Delete',
                        style: TextStyle(
                          color: Color.fromARGB(255, 243, 33, 33), // Màu chữ
                          fontSize: 10.0, // Kích thước chữ
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]),
      ),
    );
  }
}