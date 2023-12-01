import 'package:flutter/material.dart';


class SanckBarWidget extends StatelessWidget {
  const SanckBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'SnackBar',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
        ),
        backgroundColor: Colors.yellow[200],
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              final snackbar = SnackBar(
                action: SnackBarAction(
                  label: 'Undo',
                  textColor: Colors.red,
                  onPressed: (){},
                  ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                behavior: SnackBarBehavior.floating,
                padding: EdgeInsets.all(20),
                duration: const Duration(milliseconds: 3000),
                //backgroundColor: Colors.red,
                content: Text(
                'This is a snackbar',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ));
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            }, 
            child: Text('Show snackBar')),
        ),
      ),
    );
  }
}