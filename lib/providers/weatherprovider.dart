import 'package:flutter/material.dart';
import 'package:flutter_apps/models/weathermodel.dart';
import 'package:flutter_apps/services/weatherservice.dart';

class WeatherProvider extends ChangeNotifier
{
  WeatherModel? weatherModel;
  Future<void> fetchcity(String city) async
  {
    weatherModel = await WeatherService.getweather(city);
    notifyListeners();
  }
}