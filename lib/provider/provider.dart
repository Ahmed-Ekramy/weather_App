import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:weather_app1/models/weathermodel.dart';

class WeatherProvider extends ChangeNotifier{
  String? CityName;
  WeatherModel ?_weatherData;
  set weatherData (WeatherModel?weather){
    _weatherData=weather;
    notifyListeners();
  }
  WeatherModel? get weatherData=>_weatherData;

}