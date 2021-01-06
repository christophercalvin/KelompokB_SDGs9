import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:kulakan_store/detail.dart';
import 'package:kulakan_store/routingGantiPage.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void GantiPage(StatelessWidget pages){
    Navigator.push(context,
        MaterialPageRoute(
            builder: (_){
              return pages;
            }
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new ListView(
            children: <Widget>[
              new Container(
                  padding: new EdgeInsets.all(20.0),
                  child: new Center(
                      child: new Column(
                          children: <Widget>[
                            new Text("", style:new TextStyle(fontSize:200),),
                            new Image(image: new NetworkImage("https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png"), width:100),
                            new Text("Kulakan Store", style: new TextStyle(fontSize:35.0),),
                            new Text ("Versi Aplikasi: 1.0 ", style: new TextStyle(fontSize:10.0),)
                          ]
                      )
                  )
              )
            ]
        ),


      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_forward_ios),
          onPressed: (){
            //GantiPage(Detail());
            routingGantiPage.Transition(context, Detail(judul: 'Dashboard',));
          }
      ),
    );
  }
}
