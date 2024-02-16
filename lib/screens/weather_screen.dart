import 'dart:math';

import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Transform.rotate(
            angle: 45 * pi / 180,
            child: const Icon(
              Icons.navigation,
              size: 50,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            //todo :: get user location and update weather data on this screen
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.location_city,
              size: 50,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('images/weather_background.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '24' + '°',
              style: TextStyle(
                color: Colors.white,
                fontSize: 70,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'you have this message from this location',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
