import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    
    Widget _buildBodyBack() => Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.orange,
                Colors.deepOrange
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          )
      )
    );


    return Scaffold(
        body: Stack(
          children: <Widget>[
            _buildBodyBack(),
            Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Form(
            child: ListView(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                          icon: Icon(Icons.person, color: Colors.white,),
                          hintText: "Usuário",
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
                  )
                ),
                SizedBox(height: 10.0,),
                TextFormField(
                  decoration: InputDecoration(
                          icon: Icon(Icons.lock, color: Colors.white,),
                          hintText: "Senha",
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
                  )
                ),
                SizedBox(height: 10.0,),
                RaisedButton(onPressed:(){}, 
                child: Text("Login",style: TextStyle(
                  color: Colors.deepOrange,),
                  ),
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                )
              ],
            ),
          ),
          ),
        ),
          ],
        )
    );
  }
}