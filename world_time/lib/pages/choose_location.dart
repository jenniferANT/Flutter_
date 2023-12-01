//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  // void getData() async{
  //   String username = await Future.delayed(Duration(seconds: 3), () {
  //     return 'yoshi';
  //   });

  //   //simulate network request for a username
  //   String bio = await Future.delayed(Duration(seconds: 2), (){
  //     return 'vega, musician & egg collector';
  //   });

  //   print('$username - $bio');
  // }

  

  // void initState(){
  //   super.initState();
  //   getData();
  //   print('hey');
  // }
   List<WorldTime> locations = [
	    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
	    WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'greece.png'),
	    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
	    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
	    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
	    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
	    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
	    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
   ];

   void updateTime(index) async{
     WorldTime instance = locations[index] ;   
     await instance.getTime();
     // natigate to home screen
     Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDatetime': instance.isDatetime,
     });
   }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0 ,
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: locations.length,
          itemBuilder:(context, index){
            return Card(
              //shape: BeveledRectangleBorder(borderRadius:),
              child: ListTile(
                onTap: (){
                  updateTime(index);
                } ,
                title: Text(locations[index].location),
                
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            );
          } ,
          ),
      ) ,

      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterTop,
    );
  }
}