import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  @override
  Widget build(BuildContext context) {
    Position? position;

    fetchposition() async {
      bool serviceEnabled;
      LocationPermission permission;
      String latitude;
      String longtitude;

      serviceEnabled = await Geolocator.isLocationServiceEnabled();

      if (!serviceEnabled) {
        Fluttertoast.showToast(msg: 'Location is disabled');
      }
      permission = await Geolocator.checkPermission();
      if (permission == (LocationPermission.denied)) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          Fluttertoast.showToast(msg: 'Denied');
        }
      }
      if (permission == LocationPermission.deniedForever) {
        Fluttertoast.showToast(msg: 'Denied forever');
      }
      Position currentposition = await Geolocator.getCurrentPosition();
      setState(() {});
      position = currentposition;
      latitude = currentposition.latitude.toString();
      longtitude = currentposition.longitude.toString();
      print(latitude);
      print(longtitude);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('GeoLocation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              position == null ? 'Location' : position.toString(),
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  fetchposition();
                },
                child: Text('Get Location'))
          ],
        ),
      ),
    );
  }
}
