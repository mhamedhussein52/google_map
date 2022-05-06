import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var markers = HashSet<Marker>();
  // BitmapDescriptor? customMarker; //attribute
  //
  // getCustomMarker() async {
  //   customMarker = await BitmapDescriptor.fromAssetImage(
  //       ImageConfiguration.empty, 'assets/images/marker.png',);
  // }
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getCustomMarker();
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition:
            const CameraPosition(target: LatLng(30.0444, 31.2357), zoom: 14),
        onMapCreated: (_) {
          setState(() {
            markers.add(
              Marker(
                markerId: const MarkerId('1'),
                position: const LatLng(30.0444, 31.2357),
                infoWindow: InfoWindow(
                  title: 'mohamed',
                  snippet: 'please share code...',
                  onTap: (){},
                ),
                //icon: customMarker!,

              ),
            );
          });
        },
        markers: markers,
      ),
    );
  }
}
