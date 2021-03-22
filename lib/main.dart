import 'package:flutter/material.dart';
import 'package:weater_flutter/weather_view/weather_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherView(),
    );
  }
}
