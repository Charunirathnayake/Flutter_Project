import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class First extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return First_State();
  }

}

class First_State extends State<First>{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(initialCameraPosition: CameraPosition(target: LatLng(12.77, 77.02),zoom: 20),)
        ],
      ),
    );
  }

}