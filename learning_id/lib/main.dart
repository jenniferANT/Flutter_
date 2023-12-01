// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HuynhduyenCard(),
  )
  );
}

class HuynhduyenCard extends StatefulWidget {
  const HuynhduyenCard ({super.key});

  @override
  State<HuynhduyenCard> createState() => _HuynhduyenCardState();
}

class _HuynhduyenCardState extends State<HuynhduyenCard> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Huynh Duyen'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level ++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
        ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/hd.JPG'),
                radius: 40.0,
                ),
            ),
            Divider(
              height:90.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
               ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Huynh Duyen',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
               ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
               ),
            ),
            SizedBox(height: 10.0,),
            Text( 
              '$level',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
               ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'nghuynhduyenjenf@gmail.com',
                    style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 1.0,
                    fontSize: 18.0,
                  
                  ),
                ),
              ],
            ),
          ]
        ),
      ),
    );
  }
}


