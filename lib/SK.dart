import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:kulakan_store/MitraKami.dart';
import 'package:kulakan_store/routingGantiPage.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import "dart:async";
import "dart:convert";


void main(){
  runApp(new MaterialApp(
    home: new SK()
  ));
}

class SK extends StatefulWidget {
  @override
  _SKState createState() => _SKState();
}

class _SKState extends State<SK> {
  List dataJSON;

  Future<String> ambildata() async{
    http.Response hasil = await http.get(
      Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"), headers: {
        "Accept": "application/json"
    }
    );

    this.setState(() {
      dataJSON = json.decode(hasil.body);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    this.ambildata();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Syarat dan Ketentuan"),
      ),
      body: new ListView.builder(
          itemCount: dataJSON==null ? 0 : dataJSON.length,
          itemBuilder: (context, i){
            return
              new Container(
                padding: new EdgeInsets.all(20.0),
                child: new Card(
                    child:
                        new Container(
                          padding: new EdgeInsets.all(20.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Text(dataJSON[i]['title'] ,
                                style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                              ),
                              new Text (dataJSON[i]['body'])
                            ],
                          ),
                        ),
                ),
              );
        },
      ),
    );
  }
}