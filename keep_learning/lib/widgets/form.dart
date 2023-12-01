import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {

  String firstname = " ";
  String lastname = " ";
  String email = " ";
  String password = " ";
  final _formKey = GlobalKey<FormState>();

  trysubmit(){
    final isvaild = _formKey.currentState!.validate();
    if(isvaild){
      _formKey.currentState!.save();
      submitform();
    }else{
      print('Error');
    }
  }

  submitform(){
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'firstname',
                  ),
                  key: ValueKey('firstname'),
                  validator: (value){
                    if(value.toString().isEmpty){
                      return 'First name should not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value){
                    firstname = value.toString();
                  },
                  ),
                  TextFormField(
                  decoration: InputDecoration(
                    hintText: 'lastname',
                  ),
                  key: ValueKey('lastname'),
                  validator: (value){
                    if(value.toString().isEmpty){
                      return 'Last name should not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value){
                    lastname = value.toString();
                  },
                  ),
                  TextFormField(
                  decoration: InputDecoration(
                    hintText: 'email',
                  ),
                  key: ValueKey('email'),
                  validator: (value){
                    if(value.toString().isEmpty){
                      return 'Email should not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value){
                    email = value.toString();
                  },
                  ),
                  TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                  key: ValueKey('password'),
                  validator: (value){
                    if(value.toString().length<=5){
                      return 'Minimun is 5';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value){
                    password = value.toString();
                  },
                  ),
                  TextButton(
                    onPressed: (){
                     trysubmit();
                  }, 
                  child: Text('Submit'))
                ]
              ),
            ),
        ),
        )
      );
  }
}