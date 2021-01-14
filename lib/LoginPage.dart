import 'package:flutter/material.dart';
import 'package:kulakan_store/auth_services.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
          children: <Widget>[
            new Container(
                child: new Center(
                    child: new Column(
                        children: <Widget>[
                          new Text("", style:new TextStyle(fontSize:200),),
                          new Image(image: new NetworkImage("https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png"), width:100),
                          new Text("Kulakan Store", style: new TextStyle(fontSize:35.0),),
                          new Text ("Versi Aplikasi: 1.0 ", style: new TextStyle(fontSize:10.0),),

                    RaisedButton(
                    child: Text("Masuk Sebagai Anonim"),
                     onPressed: () async {
                       await AuthServices.signInAnonymous();
                     }
                    )
                        ]
                    )
                )
            )
          ]
      ),




        // children: RaisedButton(
        //   child: Text("Masuk Sebagai Anonim"),
        //   onPressed: () async {
        //     await AuthServices.signInAnonymous();
        //   },
        // ),
    );
  }
}
