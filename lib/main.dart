import 'package:flutter/material.dart';
import 'package:weather_app1/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:weather_app1/provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return WeatherProvider();

      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home_Page(),
      ),
    );
  }
}