import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Bottom Sheet',
          style: TextStyle(
            color: Colors.white,
          ),),
      ),
      body: Center(
        child: ElevatedButton(
          child:Text('Show'),
          onPressed: (){
            showModalBottomSheet(
              //backgroundColor: Colors.amberAccent ,
              shape:const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              ),
              //isDismissible: false,
              //enableDrag: false,
              context: context, 
              builder: (context){
                return const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text('Nguyen Huynh Duyen'),
                      subtitle: Text('Jennifer'),
                    ),
                                        ListTile(
                      title: Text('Nguyen Huynh Duyen'),
                      subtitle: Text('Jennifer'),
                    ),
                                        ListTile(
                      title: Text('Nguyen Huynh Duyen'),
                      subtitle: Text('Jennifer'),
                    ),
                                        ListTile(
                      title: Text('Nguyen Huynh Duyen'),
                      subtitle: Text('Jennifer'),
                    ),
                                        ListTile(
                      title: Text('Nguyen Huynh Duyen'),
                      subtitle: Text('Jennifer'),
                    ),
                  ],
                );
              }
            );
          },
        ),
      ),
    );
  }
}