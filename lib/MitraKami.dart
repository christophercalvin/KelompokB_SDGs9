import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:kulakan_store/MitraKami.dart';
import 'package:kulakan_store/routingGantiPage.dart';
import 'package:page_transition/page_transition.dart';

class MitraKami extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: new Text("Mitra Kami"),
    ),

      body:new ListView(
        children: <Widget>[
          new ListMitra(gambar: "https://cdn.infobrand.id/images/img/posts/2018/07/30/danone-aqua-mengajak-masyarakat-indonesia-tebarkan-nilai-nilai-kebaikan-dalam-ajang-asian-games-2018.jpg",
              judul: "AQUA",
              deskripsi: ""),
          new ListMitra(gambar: "https://tanobel.com/wp-content/uploads/2019/09/LOGO2.png",
              judul: "Cleo",
              deskripsi: ""),
          new ListMitra(gambar: "https://tanobel.com/wp-content/uploads/2019/09/LOGO2.png",
              judul: "AQUA",
              deskripsi: ""),
          new ListMitra(gambar: "https://tanobel.com/wp-content/uploads/2019/09/LOGO2.png",
              judul: "AQUA",
              deskripsi: ""),
          new ListMitra(gambar: "https://tanobel.com/wp-content/uploads/2019/09/LOGO2.png",
              judul: "AQUA",
              deskripsi: ""),
          new ListMitra(gambar: "https://tanobel.com/wp-content/uploads/2019/09/LOGO2.png",
              judul: "AQUA",
              deskripsi: ""),
          new ListMitra(gambar: "https://tanobel.com/wp-content/uploads/2019/09/LOGO2.png",
              judul: "AQUA",
              deskripsi: ""),
          new ListMitra(gambar: "https://ecs7.tokopedia.net/img/cache/700/product-1/2020/7/8/batch-upload/batch-upload_8fd2f31f-a0b2-46a4-9a0f-b65d419949c3",
              judul: "Attack",
              deskripsi: ""),
          new ListMitra(gambar: "https://ecs7.tokopedia.net/img/cache/700/product-1/2020/7/8/batch-upload/batch-upload_8fd2f31f-a0b2-46a4-9a0f-b65d419949c3",
              judul: "Rinso",
              deskripsi: ""),
          new ListMitra(gambar: "https://assets.klikindomaret.com/share/20010655_1.jpg",
              judul: "Tango",
              deskripsi: ""),
          new ListMitra(gambar: "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//85/MTA-4226610/silverqueen_silverqueen_cashew_30_gram_5_pcs_full06_oedjer2o.jpg",
              judul: "Silverqueen",
              deskripsi: ""),
          new ListMitra(gambar: "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//93/MTA-2736740/paseo_paseo-luxuriously-soft-tissu--2-ply--250-sheet-_full04.jpg",
              judul: "Paseo",
              deskripsi: ""),
          new ListMitra(gambar: "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//93/MTA-4108952/hit_hit_obat_nyamuk_aerosol_orange_200ml_full02.jpg",
              judul: "Hit",
              deskripsi: ""),
          new ListMitra(gambar: "https://cf.shopee.co.id/file/452b54dd2676aee525e2eb37474458c3",
              judul: "Indomie",
              deskripsi: ""),
          new ListMitra(gambar: "https://sellercenter.ralali.com/wp-content/uploads/2018/02/unilever.jpg",
              judul: "Unilever",
              deskripsi: ""),
          new ListMitra(gambar: "https://www.cadburyusa.com/content/dam/grayscale/logos/logo/Cadbury_logo_Master.jpg",
              judul: "Cadburry",
              deskripsi: ""),
          new ListMitra(gambar: "https://lh3.googleusercontent.com/proxy/eDNfkJ7FQ13o3ZOJgh2gv8cevvEUU3FNXtsS0_1PgsXwlprB79Q3-3GqO1H9ZBST2ujxWmWGUb4952P_J1B8BAo46DOhNJZL-SNKbPK4NsQ",
              judul: "Coca-Cola",
              deskripsi: ""),
          new ListMitra(gambar: "https://pendaftaranmerekdagang.com/wp-content/uploads/2017/07/Logo-Merk-Dagang.jpg",
              judul: "Nestle",
              deskripsi: ""),
          new ListMitra(gambar: "https://pendaftaranmerekdagang.com/wp-content/uploads/2017/07/Merek-Dagang-Indonesia.jpg",
              judul: "Sosro",
              deskripsi: ""),
          new ListMitra(gambar: "https://pendaftaranmerekdagang.com/wp-content/uploads/2017/07/Merek-Dagang-Indonesia.jpg",
              judul: "Sosro",
              deskripsi: ""),
          new ListMitra(gambar: "https://www.tryandreview.com/uploads/images/brands/brand_logo_mpu5o22g5rmh.png?v56",
              judul: "Bango",
              deskripsi: ""),
        ],
      )
    );
  }
}


class ListMitra extends StatelessWidget{

  ListMitra({this.gambar, this.judul, this.deskripsi, String tag});

  final String judul;
  final String gambar;
  final String deskripsi;

  @override
  Widget build(BuildContext context){
    return new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Center(
            child: new Row(
                children: <Widget>[
                  new Image(image : NetworkImage(gambar), width:100),
                  new Container(
                    padding: new EdgeInsets.all(15.0),
                    child: new Center(
                      child: new Column(
                        children:<Widget>[
                            new Text(judul, style: new TextStyle(fontSize:30.0),),
                          new Text(deskripsi, style: new TextStyle(fontSize: 11.0, color: Colors.blueGrey))
                        ]
                      )
                    )
                  )
                ]
            )
        )
    );
  }
}
