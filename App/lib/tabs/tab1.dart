import 'package:flutter/material.dart';

class TabTemperatura extends StatefulWidget {
  @override
  _TabTemperaturaState createState() => _TabTemperaturaState();
}

class _TabTemperaturaState extends State<TabTemperatura> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 10.0),
                child: Container(
                  child: Card(
                    child: Center(
                      child: Text("Temperatura"),
                    ),
                    color: Colors.white,
                    elevation: 8.0,
                  ),
                width: 300.0,                
                ),
              );
  }
}