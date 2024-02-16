import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    //todo 1 : get user loacation
    //todo 2 : get weather data according to user locatoin
    //todo 3 : pass weather data to weather_screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Container(
          color: Colors.orangeAccent,
          child: TextButton(
            onPressed: () {},
            child: Text('get location'),
          ),
        ),
      ),
    );
  }
}
