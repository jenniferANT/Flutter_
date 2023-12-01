import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextButton(
            
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(20)),
              overlayColor: MaterialStateProperty.all(Colors.red),
              elevation: MaterialStateProperty.all(40),
              backgroundColor: MaterialStateProperty.all(Colors.amberAccent), 
            ),
            onPressed: (){}, 
            child: const Text(
              'Pressd me',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            )
          ),
          SizedBox(height: 20,),
          Container(
            height: 50,
            width: 300,
            child: ElevatedButton(
              onPressed: (){
                print('OK');
              }, 
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ))
              ),
              child: Text('Like') ),
          )
        ]),
      ),
    );
  }
}
