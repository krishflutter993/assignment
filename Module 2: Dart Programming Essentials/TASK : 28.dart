import 'dart:io';

Future<void> fetchWeather() async {
  await Future.delayed(Duration(seconds: 5));
  print("Fetching weather data...");
  print("Almost done...");
}

void main() async {
  print("Starting weather fetch...");

  await fetchWeather();

  print("Weather data loaded successfully");
}
