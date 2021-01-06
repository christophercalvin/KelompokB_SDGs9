import 'package:flutter/material.dart';


class Calvin extends StatelessWidget {
  final String nama;
  final String gambar;
  Calvin({this.nama, this.gambar});
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Detail Profil $nama")),
      body: new Container(
        child: new Center(
          child: new Image(image: new NetworkImage(gambar),)
        ),
      )
    );
  }
}