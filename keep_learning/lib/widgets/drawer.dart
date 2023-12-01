import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(color: Theme.of(context).primaryColor,
        child: ListView(children: [
          DrawerHeader(
            child:Container(
              padding: EdgeInsets.all(10),
              //color: Colors.amber,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.amber),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTohfgY1R72v56_f4hhJonXbcL7l6uwiTtsfg&usqp=CAU'),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Tran Kim Hoang'),
                      Text('hoangcho')
                    ],)
                  ]
                ),
              ),
            )
          ),
          ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text('Clock'),
          ),
          ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text('Clock'),
          ),
                    ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text('Clock'),
          ),
                    ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text('Clock'),
          ),
          
        ]),
        ),

      ),
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: Container(
        child: Center(
          child: Text('Hey there'),
        ),
      ),
    );
  }
}