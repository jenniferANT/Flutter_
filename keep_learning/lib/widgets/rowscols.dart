import 'package:flutter/material.dart';

class RowlCols extends StatelessWidget {
  const RowlCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Row and Column'),
      ),
      body: Center(
        child: Container(
          height: 0.8*h,
          width: 0.8*w,
          color: Colors.yellow,
          child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Container(height: 60, width: 60, color: Colors.blue,),
              Container(height: 60, width: 60, color: Colors.green,),
              Container(height: 60, width: 60, color: Colors.red,),
              Container(height: 60, width: 60, color: Colors.pink,),
              Container(height: 60, width: 60, color: Colors.orange,),
            
            ],
          ),
        ),
      ),
    );
  }
}