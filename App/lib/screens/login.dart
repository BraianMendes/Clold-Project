import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Form(
            child: ListView(
              children: <Widget>[
                TextFormField(
                  
                ),
                TextFormField(

                ),
                RaisedButton(onPressed:(){}, child: Text("Login",style: TextStyle(color: Colors.white,)),color: Colors.deepOrange,)
              ],
            ),
          ),
        ),
    );
  }
}