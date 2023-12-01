import 'package:flutter/material.dart';

class NewBox extends StatelessWidget {
  const NewBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // const SizedBox(
      //   height: 50,
      //   width: 50,
      //   child: Text('Hi'),
      // ),
      //color: Colors.amber,
      padding: EdgeInsets.all(10),
      height: 100, width:100,
      decoration: const BoxDecoration(
        color: Colors.amber,
        //shape: BoxShape.circle
        //borderRadius: BorderRadius.circular(20),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(blurRadius: 20, spreadRadius: 5, color: Colors.blue),
        ]
      ),
      child: Center(child: 
        //Text('Hi')),
        Container(
          color: Colors.red ,
        ),
    ),
      );
  }
}