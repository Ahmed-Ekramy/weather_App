import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app1/pages/search_page.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

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
                    return Search_Page();
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
        body: Center(
            child: Text(
          "there is no weather, start search Now",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )));
  }
}
