import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:qr_flutter/qr_flutter.dart";
import 'package:flutter/services.dart';

class BarcodeTokoSaya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: new Text("Barcode Toko Saya"),
        ),
        body: Center(
          child: QrImage(
            version: 6,
            foregroundColor: Colors.black,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            padding: EdgeInsets.all(0),
            size: 200,
            data:
                "Toko: Maju Tak Gentar, Pemilik Toko : Christopher Calvin Wijaya, Deskripsi Toko: Jl. Kartini No 20 Jember"
          ),
        ),
      )
    );
  }
}


