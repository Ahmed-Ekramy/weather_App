import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherServices {
  String baseurl='http://api.weatherapi.com/v1';
  String apikey='8961b9ed066c4215bd4202634231706';
  void getWrather({required String cityName}) async {
    http.Response response = await http.get(Uri.parse(
        '$baseurl/forecast.json?key=$apikey&q=$cityName&days=7'));
    Map<String, dynamic> data = jsonDecode(response.body);
    for (int i = 0; i < data.length; i++) {}
  }
}
