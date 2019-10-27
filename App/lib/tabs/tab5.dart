import 'package:flutter/material.dart';

class TabSocial extends StatefulWidget {
  @override
  _TabSocialState createState() => _TabSocialState();
}

class _TabSocialState extends State<TabSocial> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 10.0),
                child: Container(
                  child: Card(
                    child: Center(
                      child: Text("Rede Social"),
                    ),
                    color: Colors.white,
                    elevation: 8.0,
                  ),
                width: 300.0,                
                ),
              );
  }
}