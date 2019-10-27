import 'package:flutter/material.dart';

class TabPressao extends StatefulWidget {
  @override
  _TabPressaoState createState() => _TabPressaoState();
}

class _TabPressaoState extends State<TabPressao> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 10.0),
                child: Container(
                  child: Card(
                    child: Center(
                      child: Text("Pressão Arterial"),
                    ),
                    color: Colors.white,
                    elevation: 8.0,
                  ),
                width: 300.0,                
                ),
              );
  }
}