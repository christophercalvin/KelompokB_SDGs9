import 'package:flutter/material.dart';
import 'package:kulakan_store/MitraKami.dart';

void main(){
  runApp(new MaterialApp(
    title: "Mitra di Kotamu",
    home: new MitraLokal(),
  ));
}

class MitraLokal extends StatefulWidget {
  @override
  _MitraLokalState createState() => _MitraLokalState();
}

class _MitraLokalState extends State<MitraLokal> {
  List<Container> daftarMitraLokal= new List();

  var mitra=[
    {"nama": "Aqua", "gambar": "aqua.jpg"},
    {"nama": "Cheers", "gambar": "Cheers.png"},
    {"nama": "Cleo", "gambar": "Cleo.png"},
    {"nama": "Kao", "gambar": "Kao.png"},
    {"nama": "KhongGuan", "gambar": "KhongGuan.jpg"},
    {"nama": "OT", "gambar": "OT.png"},
    {"nama": "Unilever", "gambar": "Unilever.jpg"},
    {"nama": "Wings", "gambar": "Wings.png"},
  ];

  _buatlist()async{
    for (var i=0; i< mitra.length; i++){
      final mitranya = mitra [i];
      final String gambar = mitranya["gambar"];

      daftarMitraLokal.add(
        new Container(
          child: new Card(
            child: new Column(
              children: <Widget>[
                
                new Hero(
                  tag: mitranya["nama"],
                  child: new Material(
                    child: new InkWell(
                      onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context)=> new Konten(nama: mitranya['nama'], gambar: gambar),
                      )),
                       child: new Image.asset("gambar_grid/$gambar", fit: BoxFit.cover,),
                    ),
                  ),
                ),

                new Padding(padding: new EdgeInsets.all(10.0),),
                new Text(mitranya['nama'], style: new TextStyle(fontSize:20.0),)
              ],
            ),
          ),
        )
      );
    }
  }

  @override
  void initState(){
    _buatlist();
    super.initState();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("List Mitra Di Kotamu", style: new TextStyle(color: Colors.white))
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: daftarMitraLokal,
      ),
    );
  }
}

class Konten extends StatelessWidget {
  Konten({this.nama, this.gambar});
  final String nama;
  final String gambar;
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 240.0,
            child:
            new Hero(
              tag: nama,
              child: new Material(
                child: new InkWell(
                    child: new Image.asset("gambar_grid/$gambar"),
                )
              )
            )

          ),

          new BagianNama(nama: nama),

          new BagianIcon(),
          new BagianKeterangan(),

        ]
      )
    );
  }
}

class BagianNama extends StatelessWidget {
  BagianNama({this.nama});
  final String nama;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  nama,
                  style: new TextStyle(fontSize: 20.0, color: Colors.pinkAccent),
                ),
                new Text(
                  "$nama\@gmail.com",
                  style: new TextStyle(fontSize: 15.0, color: Colors.lightBlue),
                ),
              ],
            ),
          ),
          new Row(
            children: <Widget>[
              new Icon(Icons.star, size: 30.0, color: Colors.yellow),
              new Text ("50", style: new TextStyle(fontSize: 18.0),)
            ],
          )
        ],
      )
    );
  }
}

class BagianIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Row(
        children: <Widget> [
          new Iconteks(icon: Icons.call, teks: "Telepon"),
          new Iconteks(icon: Icons.message_outlined, teks: "Kirim Pesan"),
          new Iconteks(icon: Icons.web, teks: "Lihat Web"),
        ],
      )
    );
  }
}

class Iconteks extends StatelessWidget {
  Iconteks({this.icon, this.teks});
  final IconData icon;
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: new Column(
        children: <Widget>[
          new Icon (icon, size: 40.0, color: Colors.blue),
          new Text (teks, style: new TextStyle(fontSize: 18.0, color: Colors.blue),),
        ]
      ),
    );
  }
}

class BagianKeterangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
        child: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", style: new TextStyle(fontSize:18.0), textAlign: TextAlign.justify,),
        ),
    ),
    );
  }
}



