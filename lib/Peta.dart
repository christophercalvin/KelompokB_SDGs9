import 'package:here_sdk/core.dart';
import 'package:flutter/material.dart';
import 'package:here_sdk/mapview.dart';


void main(){
  SdkContext.init(IsolateOrigin.main);
  runApp(ViewPeta());
}

class ViewPeta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Maps'),
        ),
        body: HereMap(onMapCreated: onMapCreated,)
    );
  }

  void onMapCreated(HereMapController hereMapController ){
    hereMapController.mapScene.loadSceneForMapScheme(MapScheme.normalNight, (error) {
      if (error != null){
        print ("Error: "+error.toString());
      return;
      }
    });

    double distanceToEarthInMeters = 8000;
    hereMapController.camera.lookAtPointWithDistance(GeoCoordinates(-6.1753871,106.8249588), distanceToEarthInMeters);

  }
}

