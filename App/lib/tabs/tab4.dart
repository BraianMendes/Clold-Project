import 'package:flutter/material.dart';

class TabAmbiente extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<TabAmbiente> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 10.0),
                child: Container(
                  child: Card(
                    child: Center(
                      child: Text("Condições do ambiente"),
                    ),
                    color: Colors.white,
                    elevation: 8.0,
                  ),
                width: 300.0,                
                ),
              );
  }
}