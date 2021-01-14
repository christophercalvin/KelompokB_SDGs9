import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:kulakan_store/MitraKami.dart';
import 'package:kulakan_store/routingGantiPage.dart';
import 'package:page_transition/page_transition.dart';
import 'package:kulakan_store/about.dart';
import 'package:kulakan_store/SK.dart';
import 'package:kulakan_store/calvin.dart';
import 'package:kulakan_store/catatan_toko.dart';
import 'package:kulakan_store/data_toko.dart';
import 'package:kulakan_store/Barcode.dart';
import 'package:kulakan_store/ScanBarcode.dart';
import 'package:kulakan_store/MitraLokal.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Peta.dart';
import 'auth_services.dart';
import 'verifikasi.dart';


class MyHomePage extends StatelessWidget {

  final FirebaseUser user;
  MyHomePage (this.user);

  String gambar1="https://cdn.iconscout.com/icon/free/png-512/laptop-user-1-1179329.png";
  String nama1 = "Christopher Calvin Wijaya";
  String email1 = "christopher@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
        child: new ListView(
          children : <Widget>[

            new UserAccountsDrawerHeader(
                accountName: new Text (nama1),
                accountEmail: new Text (email1),
                currentAccountPicture:
                new GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new Calvin(
                            nama: nama1, gambar: gambar1)));
                  },
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(gambar1) ,
                  ),
                ),
              decoration: new BoxDecoration(image: new DecorationImage(image: new NetworkImage("https://discovery.sndimg.com/content/dam/images/discovery/fullset/2020/4/2/nightsky2_getty.jpg.rend.hgtvcom.616.411.suffix/1585862428885.jpeg"), fit: BoxFit.cover)
              ),
            ),


            new ListTile(
              title: new Text("Barcode Toko Saya"),
              trailing: IconButton(
                icon: Icon(Icons.qr_code_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BarcodeTokoSaya(),
                    ),
                  );
                },
              ),
            ),

            new ListTile(
              title: new Text("Data Toko Saya"),
              trailing: IconButton(
                icon: Icon(Icons.storefront),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DataToko(),
                    ),
                  );
                },
              ),
            ),

            new ListTile(
              title: new Text("Catatan Toko Saya"),
              trailing: IconButton(
                icon: Icon(Icons.event_note_sharp),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Catatan(),
                    ),
                  );
                },
              ),
            ),

            new ListTile(
              title: new Text("Verifikasi pemilik"),
              trailing: IconButton(
                icon: Icon(Icons.camera_alt_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Verifikasi(),
                    ),
                  );
                },
              ),
            ),

            new ListTile(
            title: new Text("ID Login anda: "+user.uid, style: new TextStyle(fontSize: 9.0))
            ),

            RaisedButton(child: Text("Log Out"),onPressed: () async{
              await AuthServices.signOut();
            })
          ]
        )
      ),
      appBar: AppBar(
        title: Text('Dashboard',),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            title: Text(
              'Mitra Kami', style: new TextStyle(fontSize: 20.0),),
            leading: Icon(Icons.account_box_outlined, size: 50),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward, size: 35),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MitraKami(),
                  ),
                );
              },
            ),
          ),

          new ListTile(
            title: Text(
              'Mitra Di Kotamu', style: new TextStyle(fontSize: 20.0),),
            leading: Icon(Icons.location_on_outlined, size: 50),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward, size: 35),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MitraLokal(),
                  ),
                );
              },
            ),
          ),

          new ListTile(
            title: Text(
              'Lihat Peta', style: new TextStyle(fontSize: 20.0),),
            leading: Icon(Icons.map_sharp, size: 50),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward, size: 35),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewPeta(),
                  ),
                );
              },
            ),
          ),

          new ListTile(
            title: Text(
              'Scan QR Code', style: new TextStyle(fontSize: 20.0),),
            leading: Icon(Icons.search , size: 50),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward, size: 35),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScanBarcode(),
                  ),
                );
              },
            ),
          ),

          new ListTile(
            title: Text(
              'Syarat dan Ketentuan Penggunaan', style: new TextStyle(fontSize: 20.0),),
            leading: Icon(Icons.question_answer_outlined, size: 50),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward, size: 35),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SK(),
                  ),
                );
              },
            ),
          ),

          new ListTile(
            title: Text(
              'Tentang Aplikasi', style: new TextStyle(fontSize: 20.0),),
            leading: Icon(Icons.contact_support_outlined, size: 50),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward, size: 35),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => About(),
                  ),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}