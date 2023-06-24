import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app1/models/weathermodel.dart';
import 'package:weather_app1/pages/search_page.dart';

class Home_Page extends StatefulWidget {
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  // WeatherModel? weatherData;
  void updateui(){
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
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
                    updateui:updateui ,
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
              color: Colors.orangeAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(flex: 3),
                  Text(
                    "Cairo",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text("Update:12:11 pm",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/clear.png"),
                      Text(
                        "30",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Column(
                        children: [
                          Text("max:30"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("min:30"),
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Text(
                    "Clear",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Spacer(flex: 5),
                ],
              ),
            ),
    );
  }
}
