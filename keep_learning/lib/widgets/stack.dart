
import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});



  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {

  
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
        backgroundColor: Colors.blue[900],
      ),
      body: Stack(
        children: [
          Positioned(
            //top: 200,
            child:Container(
              //color: Colors.red,
              height: 300,
              width: w,
              decoration: const BoxDecoration(
                color: Colors.amber,
                image:DecorationImage(
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPbblnEloIJp64M0jhprCnY3zX0GbhSefgjw&usqp=CAU'),
                  fit: BoxFit.cover,
                ),
              ),  
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              height: 50 ,
              width: 50,
              color: Colors.black,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.blueGrey,
            ),
          )
        ],
      ),
    );
  }
}