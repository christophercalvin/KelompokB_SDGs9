import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:kulakan_store/MitraKami.dart';
import 'package:kulakan_store/routingGantiPage.dart';
import 'package:page_transition/page_transition.dart';

class Detail extends StatelessWidget {
  final String judul;

  Detail({this.judul});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(judul),
      ),
      body: new Container(
        child: new Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[

            new CardSaya(icon: Icons.account_box_outlined, text: 'Mitra Kami', warna: Colors.brown ,),
            new CardSaya(icon: Icons.wc, text: 'Tentang Kami', warna: Colors.lightBlueAccent ,),
            new CardSaya(icon: Icons.settings_applications_outlined, text: 'Tentang Aplikasi', warna: Colors.yellow,),
          ]
        )
      ),

      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_forward_ios),
          onPressed: (){
            //GantiPage(Detail());
            routingGantiPage.Transition(context, MitraKami(judul: 'Mitra Kami',));
          }
      ),



    );
  }
}


class CardSaya extends StatelessWidget{

  CardSaya({this.icon, this.text, this.warna});
  final IconData icon;
  final String text;
  final Color warna;



  @override
  Widget build(BuildContext context){

    return new Container(
      padding: new EdgeInsets.all(12.0),
      child:new Card(
          child: new Column(
              children: <Widget>[
                new Icon(icon, size: 50.0, color:warna,),
                new Text(text, style: new TextStyle(fontSize:20.0),)
              ],
          )
      ),
    );
  }
}
