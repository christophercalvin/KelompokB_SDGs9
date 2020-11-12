import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:kulakan_store/detail.dart';
import 'package:kulakan_store/routingGantiPage.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void GantiPage(StatelessWidget pages){
    Navigator.push(context,
        MaterialPageRoute(
            builder: (_){
              return pages;
            }
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Kulakan Store App"),
      // ),
      // body: ListView.builder(
      //   itemCount:5,
      //   itemBuilder: (context, int i){
      //     return GestureDetector(
      //         onTap:(){
      //           routingGantiPage.Transition(context, Detail(judul: 'Pembelian',));
      //         },
      //         child: Text("Pembelian"));
      //   }
      // ),

      body: Column(
          children:<Widget>[
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage('image/buy.png'),
      //       fit: BoxFit.cover,
      //     )
      //   ),
      //       Text(
      //         'Kulakan Store App',
      //             style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
      //       ),
      //       Text('Kulakan Store App merupakan aplikasi pembelian barang industri secara firsthand.'),
      //       Text('Seller dapat membeli barang di aplikasi ini dengan harga seller dan pembelian dilakukan secara grosir'),
      //       Text('Kulakan Store Version : 1.0'),
      //       Text('By Kelompok 2 Pemrobile Kelas A')
        ]
      ),


      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_forward_ios),
          onPressed: (){
            //GantiPage(Detail());
            routingGantiPage.Transition(context, Detail(judul: 'Dashboard',));
          }
      ),
    );
  }
}
