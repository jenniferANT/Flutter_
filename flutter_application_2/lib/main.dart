import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Huynh Duyen Cute vai'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset('assets/anh1.webp')),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Color.fromARGB(255, 34, 170, 46),
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
               padding: EdgeInsets.all(30.0),
              color: Colors.blueGrey,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
               padding: EdgeInsets.all(30.0),
              color: Color(0xFF701CA1),
              child: Text('3'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('CEC');
        },
        child: const Text('Cut'),
        backgroundColor: Colors.green,
      ),
    );
  }
}