import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app1/models/weathermodel.dart';

class WeatherServices {
  String baseurl='http://api.weatherapi.com/v1';
  String apikey='8961b9ed066c4215bd4202634231706';
  Future<WeatherModel> getWrather({required String CityName}) async {
    http.Response response = await http.get(Uri.parse(
        '$baseurl/forecast.json?key=$apikey&q=$CityName&days=7'));
    Map<String, dynamic> data = jsonDecode(response.body);
    WeatherModel weather=WeatherModel.fromJson(data);
    return weather;
  }
}

// List<WeatherModel> alldata=[];
// for (int i = 0; i < data.length; i++) {
//   alldata.add(WeatherModel.fromJson(data[i]));
//
// }