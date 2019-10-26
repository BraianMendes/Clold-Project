import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:manuel_app/tabs/tab1.dart';
import 'package:manuel_app/tabs/tab2.dart';
import 'package:manuel_app/tabs/tab3.dart';
import 'package:manuel_app/tabs/tab4.dart';
import 'package:manuel_app/tabs/tab5.dart';
import 'package:qr_flutter/qr_flutter.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: const Text("MANUEL", style: TextStyle(fontSize: 16.0),),
        centerTitle: true,
        leading: new FlatButton(onPressed: null, child: new Image.asset('img/menuIcon.png'),),
        elevation: 0.0,
      ),
    body: Column(
      children: <Widget>[
        SizedBox(height: 160.0,),
        Container(
          margin: EdgeInsets.symmetric(vertical: 0.0),
          height: 370.0,
          child: PageView(
            pageSnapping: true,
            //padding: EdgeInsets.all(0.0),
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              TabTemperatura(), //temperatura corporal
              TabBatimento(), //btimento cardiaco
              TabPressao(), //pressão arterial
              TabAmbiente(), //social
              TabSocial(), //condicoes do ambiente

            ],
          ),
        ),     
      ],
    )
    );
  }
}



/* ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            controller: ScrollController(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index){
              if(index % 2 == 0) {
            return _buildCarousel(context, index ~/ 2);
            }
            else {
              return Divider(); 
              }
            },*/