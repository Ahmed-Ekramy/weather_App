import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app1/models/weathermodel.dart';

import '../servecies/weather_services.dart';

class Search_Page extends StatelessWidget {
String? CityName;
VoidCallback?updateui;
Search_Page({ this.CityName, required this.updateui});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search City",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body:  Padding(
        padding:  EdgeInsets.all(8.0),
        child: Center(
          child: TextField(
            onSubmitted: (data)async  {
              CityName=data;
              WeatherServices services=WeatherServices();
              WeatherModel weather=await services.getWrather(CityName: CityName!);
              weatherData=weather;
              updateui!();
            Navigator.pop(context);
            },
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                label: Text("search"),
                hintText:"Enter City Name",
                border: OutlineInputBorder(
                )
            ),
          ),
        ),
      ),
    );
  }
}
WeatherModel ?weatherData;