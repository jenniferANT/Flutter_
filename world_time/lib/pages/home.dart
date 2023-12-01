import 'package:flutter/material.dart';

// import 'package:world_time/pages/loading.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var choto;

  @override
  Widget build(BuildContext context) {

    choto = choto != null && choto.isNotEmpty ? choto : ModalRoute.of(context)!.settings.arguments;

    //choto = choto.isNotEmpty ? choto : ModalRoute.of(context)!.settings.arguments;
    print(choto);
   
    // print(ModalRoute.of(context)!.settings.arguments);
    
    //set bâckground
    String bgImage = choto['isDatetime'] ? 'day.png' : 'night.png';
    Color? bgColor = choto['isDatetime'] ? Colors.blue : Colors.blue[900];

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
              )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: () async {
                   dynamic result = await Navigator.pushNamed(context, '/location');
                   setState(() {
                     choto = {
                      'time' : result['time'],
                      'location' : result['location'],
                      'flag': result['flag'],
                      'isDatetime': result['isDatetime'],
                     };
                   });
                  }, 
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.grey[300],
                    ),
                  label: Text(
                    'Edit Location',
                    style: TextStyle(
                      color: Colors.grey[300],
                    ),
                    ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      choto['location'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                        color: Colors.white,
                      ),
                      )
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  choto['time'],
                  style: TextStyle(
                    fontSize: 70,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        )
      )  
    );
  }
}