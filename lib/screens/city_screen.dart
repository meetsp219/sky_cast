import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({super.key});

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
              child: TextField(
                onChanged: (newValue) {},
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your city',
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    // borderSide: BorderSide(color: Colors.cyan),
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //todo :: inputText -> weatherdata then pass it back to weather_screen
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.orangeAccent,
                ),
                child: Text(
                  'Get Location',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
