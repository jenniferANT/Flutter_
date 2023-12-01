import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
String selectedvalue = 'None';

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    //var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(child: Text('Dropdown', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Container(
          margin: EdgeInsets.all(20),
          height: 70,
          width: w,
          color: Colors.white,
          child: DropdownButton<String>(
            value: selectedvalue,
            icon: Icon(Icons.arrow_circle_down_rounded),
            items: ['None','Orange',' Apple', 'Banana', 'Man'].map((String item){
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item));
            }).toList(),
            onChanged: (value) { 
              setState((){
                selectedvalue = value!;
              });
            },),
        )
      ]),
    );
  }
}