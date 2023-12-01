import 'package:flutter/material.dart';
import 'box_new.dart';

class ContainerSized extends StatelessWidget {
  const ContainerSized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container and SizeBox'),
        backgroundColor: Colors.green[200],
      ),
      body: Center(child: NewBox())
    );
  }
}

