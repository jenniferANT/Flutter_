import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4, 
      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.amberAccent,
          title: Text('What'),
          bottom:const TabBar(
            isScrollable: true,
            indicatorColor: Colors.green,
            tabs: [
            Tab(
              icon: Icon(Icons.chat),
              text: 'chats',
            ),
            Tab(
              icon: Icon(Icons.bookmark),
              text: 'tag',
            ),
            Tab(
              icon: Icon(Icons.people),
              text: 'user',
            ),
            Tab(
              icon: Icon(Icons.vaccines),
              text: 'hi',
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: Center(
              child: Text('chats', style: TextStyle(fontSize: 30),),
            ),
          ),
          Container(
            child: Center(
              child: Text('status', style: TextStyle(fontSize: 30),),
            ),
          ),
          Container(
            child: Center(
              child: Text('user', style: TextStyle(fontSize: 30),),
            ),
          ),
          Container(
            child: Center(
              child: Text('hi', style: TextStyle(fontSize: 30),),
            ),
          )
        ]),
      )
    );
  }
}