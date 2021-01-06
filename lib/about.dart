import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:kulakan_store/MitraKami.dart';
import 'package:kulakan_store/routingGantiPage.dart';
import 'package:page_transition/page_transition.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("Tentang Aplikasi"),
        ),

      body: new ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Center(
              child: new Column(
                children: <Widget>[
                  new Image(image: new NetworkImage("https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png"), width:100),
                  new Text("Kulakan Store", style: new TextStyle(fontSize:35.0),),
                  new Text ("", style: new TextStyle(fontSize:35.0),),
                  new Text ("Kulakan Store merupakan aplikasi idaman reseller untuk melakukan kegiatan menjual ulang produk yang telah dibeli dari produsen dengan harga beli yang murah.", style: new TextStyle(fontSize:15.0),),
                  new Text ("", style: new TextStyle(fontSize:35.0),),
                  new Text ("Versi Aplikasi: 1.0 ", style: new TextStyle(fontSize:10.0),)
                ]
              )
            )
          )
        ]
      )
    );
  }
}