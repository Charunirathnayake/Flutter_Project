/*import 'package:flutter/material.dart';
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
  static const _initialPosition = LatLng(6.7184, 80.7741);
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
        mapType: MapType.normal,
        compassEnabled: true,
        markers: _makers,
        onCameraMove: _onCameraMove,
              ),
              Positioned(child: FloatingActionButton(onPressed: _onAddMarkerPressed,tooltip: "Add Maker",backgroundColor: Color(0xffBA680B),),
                            top: 40,
                            right: 10,
    
                            ),
                            Icon(Icons.add_location,color:Colors.white),
                  
                          ]);
                        }
                      
                        void onCreated(GoogleMapController controller) {
                        setState((){
                          mapController=controller;
                        });
                      }
                      
                      
                        void _onCameraMove(CameraPosition position) {
                          setState(() {
                            _lastPosition=position.target;
                          });
                }
              
                void _onAddMarkerPressed() {
  }
}*/
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:miniproject/app_screen/Login.dart';


class GetMap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GetMapState();
  }
}

class GetMapState extends State<GetMap> {
  static const _initialPosition = LatLng(6.7185992, 80.7879343);
  GoogleMapController mapController;

  LatLng _lastPosition = _initialPosition;

  final Set<Marker> _markers = {};

  Location location = new Location();
  Firestore firestore = Firestore.instance;
  // Geoflutterfire geo = Geoflutterfire();
  static String userId;

  final DatabaseReference database = FirebaseDatabase.instance
      .reference()
      .child('Tour_Guide')
      .child('traveller_geoPoint');

  @override
  void initState() {
    super.initState();
    getDriversMarkers();
    /*FirebaseAuth.instance.currentUser().then((currentUser) => {
          if (currentUser == null)
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginInterface()))
            }
          else
            {getDriversMarkers(), userId = currentUser.uid}
        });*/
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Get Map'),
      ),*/
      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition:
                CameraPosition(target: _initialPosition, zoom: 10),
            onMapCreated: onCreated,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            mapType: MapType.normal,
            compassEnabled: true,
            markers: _markers,
            onCameraMove: _onCameraMove,
          )
        ],
      ),
    );
  }

  void _onCameraMove(CameraPosition position) {
    setState(() {
      _lastPosition = position.target;
    });
  }

  void onCreated(GoogleMapController controller) {
    //  _startQuery();
    getDriversMarkers();
    setState(() {
      mapController = controller;
    });
  }

  getDriversMarkers() {
    database.once().then((DataSnapshot snapshot) {
      Map<dynamic, dynamic> values = snapshot.value;
      print(values);

      values.forEach((key, values) {
        if (userId == values['uid']) {
          print('${values["latitude"]}/${values["longitude"]}');
          var markers = Marker(
              markerId:
                  MarkerId('${values["latitude"]} ${values["longitude"]}'),
              position: LatLng(values["latitude"], values["longitude"]),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: InfoWindow(title: 'Magic Marker', snippet: 'buhaha'));
          _markers.add(markers);
        }
      });
      print('markersssss: $_markers');
    });
  }
}

