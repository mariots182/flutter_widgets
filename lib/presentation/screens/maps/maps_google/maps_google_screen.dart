import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapsGoogleScreen extends StatefulWidget {
  static const name = 'maps_google_screen';

  // const MapsGoogleScreen({Key? key}) : super(key: key);
  const MapsGoogleScreen({super.key});

  // @override
  // _MapsGoogleScreenState createState() => _MapsGoogleScreenState();

    @override
  State<MapsGoogleScreen> createState() => _MapsGoogleScreenState();
}


class _MapsGoogleScreenState extends State<MapsGoogleScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Google Maps'),
          backgroundColor: Colors.green[700],
        ),
        body: Card(
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
          ),
        )
  
      ),
    );
  }
}

