import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search_Page extends StatelessWidget {
String? CityName;

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
            onSubmitted: (data)  {
              CityName=data;
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
