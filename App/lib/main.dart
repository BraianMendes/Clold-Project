import 'package:flutter/material.dart';
import 'package:manuel_app/screens/home.dart';
import 'package:flutter/services.dart';
import 'package:manuel_app/screens/login.dart';


void main(){
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manuel V1',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen()
    );
  }
}