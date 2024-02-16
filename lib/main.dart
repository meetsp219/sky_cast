import 'package:flutter/material.dart';
import 'package:sky_cast/screens/city_screen.dart';
import 'package:sky_cast/screens/loading_screen.dart';
import 'package:sky_cast/screens/weather_screen.dart';

void main() {
  runApp(const SkyCast());
}

class SkyCast extends StatefulWidget {
  const SkyCast({super.key});

  @override
  State<SkyCast> createState() => _SkyCastState();
}

class _SkyCastState extends State<SkyCast> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoadingScreen(),
    );
  }
}
