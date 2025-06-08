import 'package:dio/dio.dart';
import 'package:flutter_apps/models/weathermodel.dart';

class WeatherService {
  static Dio dio = Dio();

  static Future<WeatherModel> getweather(String city) async
  {
    try {
      Response response = await dio.get(
          "https://api.weatherapi.com/v1/current.json?q=$city&key=805d8e4621234f858ee72953251903"
      );
      if (response.statusCode == 200) {
        return WeatherModel.fromjson(response.data);
      }
      else {
        throw Exception("Error");
      }
    }
    catch (ex) {
      throw Exception(ex);
    }
  }
}