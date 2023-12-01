// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

    

    void setupWorldTime()async {
      WorldTime instance = WorldTime(location: 'Vietnam' , flag: '.', url: 'Asia/Ho_Chi_Minh');
      await instance.getTime();
      // print(instance.time);
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'location': instance.location,
        'flag': instance.flag,
        'time': instance.time,
        'isDatetime': instance.isDatetime,
      });
      // print(instance.location);
    }

      void initState(){
      super.initState();
  
      setupWorldTime();
      
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SpinKitWaveSpinner(
          color: Colors.amber,
          size: 80.0,
        )
      )
      ); 
  }
}
