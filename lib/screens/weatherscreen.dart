import 'package:flutter/material.dart';
import 'package:flutter_apps/providers/weatherprovider.dart';
import 'package:flutter_apps/widgets/weatherwidget.dart';
import 'package:provider/provider.dart';

class WeatherScreen extends StatelessWidget {
  final String city;
  const WeatherScreen({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text("Weather App"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Consumer<WeatherProvider>(
        builder: (context, value, child){
          final weather = value.weatherModel;
          if (weather == null)
            {
              value.fetchcity(city);
              return Center(child: CircularProgressIndicator());
            }
          else
            {
              value.fetchcity(city);
              return WeatherWidget(
                  cityname: weather.cityname,
                  countryname: weather.countryname,
                  temperaturec: weather.temperaturec,
                  condition: weather.condition,
                  conditionicon: weather.conditionicon
              );
            }
        }
      ),
    );
  }
}