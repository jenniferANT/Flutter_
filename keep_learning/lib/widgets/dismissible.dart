import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = ['Orange', 'Apple','Mango','Grapes','Banana'];

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Dismissible Package')),
        elevation: 0, 
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10), 
        
        itemCount: fruits.length,
        itemBuilder: (context, index){
          final fruit = fruits[index];
          return Dismissible(
            key: Key(fruit), 
            onDismissed: (direction){
              if(direction == DismissDirection.startToEnd){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.yellow ,content: Text(fruits[index])));
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.green ,content: Text(fruits[index])));
              }
            },
            background: Container( // Màu nền phía sau khi vuốt từ trái sang phải
              color: Colors.red,
              alignment: Alignment.centerLeft,
              child: Icon(Icons.delete),
            ),
            secondaryBackground: Container(
              color: Colors.green,
              
            ),
            child: Card(
              child: ListTile(
                title: Text(fruits[index]),
              ),
            )
          ); 
        }
      ),
    );
  }
}