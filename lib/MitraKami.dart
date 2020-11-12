import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:kulakan_store/MitraKami.dart';
import 'package:kulakan_store/routingGantiPage.dart';
import 'package:page_transition/page_transition.dart';

class MitraKami extends StatelessWidget {
  final String judul;

  MitraKami({this.judul});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(judul),
    ),

      body:new ListView(
        children: <Widget>[
          new ListMitra(gambar: "https://cdn.infobrand.id/images/img/posts/2018/07/30/danone-aqua-mengajak-masyarakat-indonesia-tebarkan-nilai-nilai-kebaikan-dalam-ajang-asian-games-2018.jpg",
              judul: "aqua",
              deskripsi: "AQUA adalah merek air minum dalam kemasan"),
        ],
      )
    );
  }
}


class ListMitra extends StatelessWidget{

  ListMitra({this.gambar, this.judul, this.deskripsi});

  final String judul;
  final String gambar;
  final String deskripsi;

  @override
  Widget build(BuildContext context){
    return new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Center(
            child: new Row(
                children: <Widget>[
                  new Image(image : NetworkImage(gambar), width:80),
                  new Container(
                    padding: new EdgeInsets.all(15.0),
                    child: new Center(
                      child: new Column(
                        children:<Widget>[
                            new Text(judul, style: new TextStyle(fontSize:15.0),),
                          new Text(deskripsi, style: new TextStyle(fontSize: 10.0, color: Colors.blueGrey))
                        ]
                      )
                    )
                  )
                ]
            )
        )
    );
  }
}