import 'package:flutter/material.dart';

class ListGird extends StatefulWidget {
  const ListGird({super.key});

  @override
  State<ListGird> createState() => _ListGirdState();
}

class _ListGirdState extends State<ListGird> {

  List<String> fruits = ['Orange', 'Apple', 'Mango','Banana'];
  
  Map fruits_person ={
    'fruits' : ['Orange', 'Apple', 'Mango','Banana'],
    'names' : ['Karan', 'Akshitt', 'Gauraw', 'Aasif']
  };
  
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('List and Gird'),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          height: 0.9*h,
          width: 0.9*w,
          decoration: BoxDecoration(color: Colors.grey[900]),
          // ListView.builder(
          //   itemCount: fruits.length,
          //   itemBuilder: (context, index){
          //     return Card(child: ListTile(
          //       onTap: (){
          //         print(fruits_person['fruits'][index]);
          //       },
          //       leading: Icon(Icons.person),
          //       title: Text(fruits_person['fruits'][index]),
          //       subtitle: Text(fruits_person['names'][index]),
          //       ),
          //     );
          //   },
          // ),

          // child: GridView(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 3,
          //     crossAxisSpacing: 20,
          //     mainAxisSpacing: 20,
          //     childAspectRatio:2/3,
          //     ),
          //   children: [
          //     Card(
          //       child: 
          //         Center(child: Text('Orange')),
          //       ),
          //     Card(
          //       child: 
          //         Center(child: Text('Orange')),
          //       ),
          //       Card(
          //       child: 
          //         Center(child: Text('Orange')),
          //       ),
          //       Card(
          //       child: 
          //         Center(child: Text('Orange')),
          //       ),
          //       Card(
          //       child: 
          //         Center(child: Text('Orange')),
          //       ),
                
          //   ],
          // ) 
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3 ),
            itemCount: fruits_person['fruits'].length,
            itemBuilder: (context, index){
              return Card(child: ListTile(
                onTap: (){
                  print(fruits_person['fruits'][index]);
                },
                //leading: Icon(Icons.person),
                title: Text(fruits_person['fruits'][index]),
                subtitle: Text(fruits_person['names'][index]),
                ),
              );
            },
          ),
        ),
      )
    );
  }
}