import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class Scan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}


class ScanBarcode extends StatefulWidget {
  @override
  _ScanBarcodeState createState() => _ScanBarcodeState();
}

class _ScanBarcodeState extends State<ScanBarcode> {
  String text="Hasil Scanner";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Scanner"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Padding(padding: new EdgeInsets.only(top: 30.0),),
            Text(text),
            SizedBox(
              height: 20,
            ),
            RaisedButton(child: Text("Scan"), onPressed: () async{
              text= await scanner.scan();
              setState(() {});
            },)
          ],
        )
      )
    );
  }
}
