import 'package:flutter/material.dart';

class Day19 extends StatefulWidget {
  const Day19({super.key});

  @override
  State<Day19> createState() => _Day19State();
}

class _Day19State extends State<Day19> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(children: [
          Stack(
            children: [
              Positioned(
                  child: Container(
                height: h / 2,
                color: Colors.yellow,
                child: Stack(
                  children: [
                    Positioned(
                        child: Container(
                      color: Colors.red,
                      height: 350,
                    ))
                  ],
                ),
              )),
            ],
          )
        ]),
      ),
    );
  }
}
