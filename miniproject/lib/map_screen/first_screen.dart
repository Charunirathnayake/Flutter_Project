import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class First extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return First_State();
  }
}

class First_State extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Map());
  }
}

class Map extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Map_state();
  }
}

class Map_state extends State<Map> {
  GoogleMapController mapController;
  static const _initialPosition = LatLng(12.97, 77.58);
  LatLng _lastPosition = _initialPosition;
  final Set<Marker> _makers = {};
  

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      GoogleMap(
        initialCameraPosition:
            CameraPosition(target: _initialPosition, zoom: 10),
        onMapCreated: onCreated,
        myLocationButtonEnabled: true,
      )
    ]);
  }

  void onCreated(GoogleMapController controller) {
  setState((){
    mapController=controller;
  });
}

}

