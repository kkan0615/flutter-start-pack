import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MapScreen();

}

class _MapScreen extends State<MapScreen> {
  Completer<GoogleMapController> _controller = Completer();
  late GoogleMapController _mapController;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.4219999, -122.0862462),
    zoom: 14.4746,
  );

  @override
  void initState() {
    super.initState();
  }

  void _onFloatingBtnPressed() async {
    LocationPermission permission = await Geolocator.requestPermission();
    var currentPosition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
    log(currentPosition.toString());
    _mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
              target: LatLng(currentPosition.latitude, currentPosition.longitude), zoom: await _mapController.getZoomLevel()),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        toolbarHeight: 50,
        title: const Text('Map'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: _onFloatingBtnPressed,
        tooltip: 'Increment',
        child: const Icon(Icons.radar),
      ),
      body: GoogleMap(
        initialCameraPosition: _kGooglePlex,
        myLocationEnabled: true,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
          _mapController = controller;
        },
      ),
    );
  }
}