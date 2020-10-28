import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String judul;

  Detail({this.judul});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("judul"),
      ),
    );
  }
}


