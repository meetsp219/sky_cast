import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sky_cast/screens/city_screen.dart';
import 'package:sky_cast/services/weather.dart';

class WeatherScreen extends StatefulWidget {
  final locationWeather;

  const WeatherScreen(this.locationWeather);

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  int? temperature;
  int? condition;
  String? cityName;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.locationWeather);
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    condition = weatherData['weather'][0]['id'];
    double temp = weatherData['main']['temp'];
    temperature = temp.round();
    cityName = weatherData['name'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CityScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.location_city,
              size: 50,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '$temperature°' + WeatherModel().getWeatherIcon(condition ?? 0),
              style: TextStyle(
                color: Colors.white,
                fontSize: 70,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              WeatherModel().getMessage(temperature ?? 0),
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
