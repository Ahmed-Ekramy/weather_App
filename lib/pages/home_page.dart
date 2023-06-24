import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app1/models/weathermodel.dart';
import 'package:weather_app1/pages/search_page.dart';

import '../provider/provider.dart';

class Home_Page extends StatefulWidget {
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  WeatherModel ?weatherData;

  void updateui() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    weatherData = Provider
        .of<WeatherProvider>(context, listen: true)
        .weatherData;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Weather",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Search_Page(
                    updateui: updateui,
                  );
                }));
              },
              icon: Icon(
                Icons.search,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: weatherData == null
          ? Center(
          child: Text(
            "there is no weather, start search Now",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ))
          : Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter
                  ,colors:[ weatherData!.getThemeColor(),
              weatherData!.getThemeColor()[300]!,weatherData!.getThemeColor()[100]!])
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 3),
          Text(
            Provider
                .of<WeatherProvider>(context)
                .CityName!,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text("updated: ${weatherData!.date.hour}: ${weatherData!.date.minute}",
              style: TextStyle(
                fontSize: 20,
              )),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(weatherData!.getImage()),
              Text(
                "${weatherData!.temp.toInt()}",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Column(
                children: [
                  Text("max:${weatherData!.maxTemp.toInt()}"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("min:${weatherData!.minTemp.toInt()}"),
                ],
              )
            ],
          ),
          Spacer(),
          Text(
            weatherData!.weatherStateName,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Spacer(flex: 5),
        ],
      ),
    ),);
  }
}
