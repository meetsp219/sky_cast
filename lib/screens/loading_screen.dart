import 'package:flutter/material.dart';
import 'package:sky_cast/constants.dart';
import 'package:sky_cast/screens/weather_screen.dart';
import 'package:sky_cast/services/location.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sky_cast/services/networking.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$kAPIKey&units=metric');

    var weatherData = await networkHelper.getData();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WeatherScreen(weatherData);
    }));
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
    //todo 1 : get user loacation
    //todo 2 : get weather data according to user locatoin
    //todo 3 : pass weather data to weather_screen
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}
