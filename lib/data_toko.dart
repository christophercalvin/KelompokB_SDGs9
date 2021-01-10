import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:kulakan_store/MitraKami.dart';
import 'package:kulakan_store/routingGantiPage.dart';
import 'package:page_transition/page_transition.dart';

void main(){
  runApp(new MaterialApp(
    home: new DataToko(),
  ));
}

class DataToko extends StatefulWidget {
  @override
  _DataToko createState() => _DataToko();
}

class _DataToko extends State<DataToko> {

  List<String> kepemilikan=["Atas Nama Pribadi", "Atas Nama CV", "Atas Nama PT", "Atas Nama UD", "Asosiasi Tetapi Bukan PT/CV/UD", "Lainnya"];
  String _kepemilikan="Atas Nama Pribadi";

  String _KategoriToko=" ";

  TextEditingController controllerNama= new TextEditingController();
  TextEditingController controllerPassword= new TextEditingController();
  TextEditingController controllerDeskripsi= new TextEditingController();

  void _pilihKategoriToko(String value){
    setState((){
      _KategoriToko=value;
    });
  }

  void pilihKepemilikan(String value){
    setState(() {
      _kepemilikan=value;
    });
  }

  void _kirimdata(){
    AlertDialog alertDialog= new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(
          children: <Widget>[
            new Text("Nama Toko: ${controllerNama.text}"),
            new Text("Password Toko: ${controllerPassword.text}"),
            new Text("Deskripsi Toko: ${controllerDeskripsi.text}"),
            new Text("Kategori Toko: $_KategoriToko"),
            new Text("Kepemilikan Toko: $_kepemilikan"),
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
        title: new Text ("Data Toko"),
      ),

      body: ListView(
        children: [
          new Container(
              child: new Column(
                children: <Widget>[
                  new Padding(padding: new EdgeInsets.only(top: 30.0),),
                  new TextField(
                    controller: controllerNama,
                    decoration: new InputDecoration(
                        hintText: "Tulis Nama Toko Disini",
                        labelText: "Nama Toko",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(15.0)
                        )
                    ),
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 30.0),),
                  new TextField(
                    controller: controllerPassword,
                    obscureText: true,
                    decoration: new InputDecoration(
                        hintText: "Password",
                        labelText: "Password Toko",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)
                        )
                    ),
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 30.0),),
                  new TextField(
                    controller: controllerDeskripsi,
                    maxLines: 5,
                    decoration: new InputDecoration(
                        hintText: "Tulis Deskripsi Disini",
                        labelText: "Deskripsi Toko",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(15.0)
                        )
                    ),
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 30.0),),
                  new RadioListTile(
                    value: "TOSERBA (Toko Serba Ada)",
                    title: new Text ("TOSERBA (Toko Serba Ada)"),
                    groupValue: _KategoriToko,
                    onChanged: (String value){
                      _pilihKategoriToko(value);
                    },
                    activeColor: Colors.green,
                    subtitle: new Text("Toko yang menjual segala jenis kebutuhan. Toko ini memiliki barang lengkap, segala jenis barang dapat ditemukan di toko ini"),
                  ),

                  new RadioListTile(
                    value: "Warung",
                    title: new Text ("Warung"),
                    groupValue: _KategoriToko,
                    onChanged: (String value){
                      _pilihKategoriToko(value);
                    },
                      activeColor: Colors.green,
                      subtitle: new Text("Umumnya toko ini menjual kebutuhan pokok saja"),
                  ),

                  new RadioListTile(
                      value: "Mini Market",
                      title: new Text ("Mini Market"),
                      groupValue: _KategoriToko,
                      onChanged: (String value){
                        _pilihKategoriToko(value);
                      },
                      activeColor: Colors.green,
                    subtitle: new Text("Toko yang menjual grosir dan eceran, lebih kecil dari Supermarket"),
                  ),

                  new RadioListTile(
                      value: "Supermarket",
                      title: new Text ("Supermarket"),
                      groupValue: _KategoriToko,
                      onChanged: (String value){
                        _pilihKategoriToko(value);
                      },
                      activeColor: Colors.green,
                      subtitle: new Text("Toko yang menjual grosir dan eceran dengan penjualan terbanyak. Umumnya terletak di perkotaan")
                  ),

                  new RadioListTile(
                      value: "Toko Online",
                      title: new Text ("Toko Online"),
                      groupValue: _KategoriToko,
                      onChanged: (String value){
                        _pilihKategoriToko(value);
                      },
                      activeColor: Colors.green,
                      subtitle: new Text("Toko yang menjual barang secara online baik melalui sosial media atau e-commerce"),
                  ),

                  new RadioListTile(
                    value: "Lainnya",
                    title: new Text ("Lainnya"),
                    groupValue: _KategoriToko,
                    onChanged: (String value){
                      _pilihKategoriToko(value);
                    },
                    activeColor: Colors.green,
                    subtitle: new Text("Pilih lainnya apabila tidak ada kategori yang cocok"),
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 30.0),),

                  new Row(
                    children: <Widget>[
                        new Text("Pilih Status Kepemilikan Toko", style: new TextStyle(fontSize: 15.0, color: Colors.blue))
                    ],
                  ),
                  new DropdownButton(
                      onChanged:(String value){
                        pilihKepemilikan(value);
                      },
                      value: _kepemilikan,
                      items: kepemilikan.map((String value){
                        return new DropdownMenuItem(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList()),
                  
                  new RaisedButton(
                    child: new Text("OK"),
                    color: Colors.blue,
                    onPressed: (){_kirimdata();},
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}