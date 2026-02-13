import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherApp(),
    );
  }
}

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  final TextEditingController _cityController = TextEditingController();

  String weatherInfo = "";

  Future<void> fetchWeather(String city) async {
    try {
      // 1. Get latitude & longitude
      final geoUrl =
          "https://geocoding-api.open-meteo.com/v1/search?name=$city";
      final geoResponse = await http.get(Uri.parse(geoUrl));
      final geoData = jsonDecode(geoResponse.body);

      if (geoData["results"] == null || geoData["results"].isEmpty) {
        setState(() {
          weatherInfo = "City not found";
        });
        return;
      }

      final lat = geoData["results"][0]["latitude"];
      final lon = geoData["results"][0]["longitude"];

      // 2. Get weather data
      final weatherUrl =
          "https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&current_weather=true";
      final weatherResponse = await http.get(Uri.parse(weatherUrl));
      final weatherData = jsonDecode(weatherResponse.body);

      final current = weatherData["current_weather"];

      setState(() {
        weatherInfo =
            "City: $city\n"
            "Temperature: ${current["temperature"]} °C\n"
            "Wind Speed: ${current["windspeed"]} km/h";
      });
    } catch (e) {
      setState(() {
        weatherInfo = "Error fetching weather data";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Basic Weather App"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _cityController,
              decoration: const InputDecoration(
                labelText: "Enter City Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                fetchWeather(_cityController.text.trim());
              },
              child: const Text("Get Weather"),
            ),
            const SizedBox(height: 20),
            Text(weatherInfo, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
