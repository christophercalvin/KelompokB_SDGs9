import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:kulakan_store/MitraKami.dart';
import 'package:kulakan_store/routingGantiPage.dart';
import 'package:page_transition/page_transition.dart';

void main(){
  runApp(new MaterialApp(
    home: new Catatan(),
  ));
}

class Catatan extends StatefulWidget {
  @override
  _CatatanState createState() => _CatatanState();
}

class _CatatanState extends State<Catatan> {

  TextEditingController controllerJudul= new TextEditingController();
  TextEditingController controllerCatatan= new TextEditingController();

  void _kirimdata(){
    AlertDialog alertDialog= new AlertDialog(
      content: new Container(
          height: 200.0,
          child: new Column(
            children: <Widget>[
              new Text("Judul: ${controllerJudul.text}"),
              new Text("Catatan: ${controllerCatatan.text}"),
            ],
          )
      ),
    );
    showDialog(context: context, child:alertDialog);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.list),
        title: new Text ("Catatan Toko"),
      ),

      body: ListView(
        children: [
          new Container(
            child: new Column(
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(top: 30.0),),
                new TextField(
                  controller: controllerJudul,
                  decoration: new InputDecoration(
                    hintText: "Tulis Judul Catatan",
                    labelText: "Judul",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0)
                      ),
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 30.0),),
                new TextField(
                  maxLines: 10,
                  controller: controllerCatatan,
                  decoration: new InputDecoration(
                    hintText: "Tulis Catatan Disini",
                    labelText: "Catatan",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(15.0)
                    ),
                  ),
                ),

                new RaisedButton(
                  child: new Text("Simpan"),
                  color: Colors.blue,
                  onPressed: (){_kirimdata();},
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}


