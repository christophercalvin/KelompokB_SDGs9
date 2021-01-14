import 'dart:io';
import 'package:flutter/material.dart';
import 'camera_page.dart';

class Verifikasi extends StatefulWidget {
  @override
  _VerifikasiState createState() => _VerifikasiState();
}

class _VerifikasiState extends State<Verifikasi> {
  File imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verifikasi Diri'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
            margin: EdgeInsets.only(top: 20, bottom: 10),
              width: 300,
              height: 450,
              color: Colors.lightBlueAccent[200],
              child: (imageFile != null) ? Image.file(imageFile) : SizedBox()
            ),

            RaisedButton(
              child: Text("Ambil Gambar"),
              onPressed: () async{
                imageFile= await Navigator.push<File>(
                  context, MaterialPageRoute(builder: (_) => CameraPage())
                );
                setState(() {
                });
              },
            )
          ]
        )
      )
    );
  }
}

