import 'package:flutter/material.dart';

class TabBatimento extends StatefulWidget {
  @override
  _TabBatimentoState createState() => _TabBatimentoState();
}

class _TabBatimentoState extends State<TabBatimento> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 10.0),
                child: Container(
                  child: Card(
                    child: Center(
                      child: Text("Batimento Cardíaco"),
                    ),
                    color: Colors.white,
                    elevation: 8.0,
                  ),
                width: 300.0,                
                ),
              );
  }
}