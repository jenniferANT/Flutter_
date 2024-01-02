import 'package:flutter/material.dart';
import 'package:keep_learning/widgets/day19ui.dart';
import 'package:keep_learning/widgets/imagepicker.dart';
import 'package:keep_learning/widgets/list_gid.dart';
import 'package:keep_learning/widgets/location.dart';
//import 'package:keep_learning/widgets/animated_text.dart';
//import 'package:keep_learning/widgets/bottomnav.dart';
//import 'package:keep_learning/widgets/dropdown.dart';
//import 'package:keep_learning/widgets/form.dart';
//import 'package:keep_learning/widgets/stack.dart';
//import 'package:keep_learning/widgets/tabbar.dart';
//import 'package:keep_learning/widgets/alert_dialog.dart';
//import 'package:keep_learning/widgets/bottomsheet.dart';
//import 'package:keep_learning/widgets/dismissible.dart';
//import 'package:keep_learning/widgets/drawer.dart';
//import 'package:keep_learning/widgets/image.dart';
//import 'package:keep_learning/widgets/button.dart';
//import 'package:keep_learning/widgets/list_gid.dart';
//import 'package:keep_learning/widgets/snackbar.dart';
//import 'package:keep_learning/widgets/rowscols.dart';
//import 'widgets/container_sized.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, primaryColor: Colors.red),
      home: const Day19(),
    );
  }
}
