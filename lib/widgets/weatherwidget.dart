import 'package:flutter/material.dart';

class WeatherWidget extends StatelessWidget {
  final String cityname;
  final String countryname;
  final double temperaturec;
  final String condition;
  final String conditionicon;

  const WeatherWidget({
    required this.cityname,
    required this.countryname,
    required this.temperaturec,
    required this.condition,
    required this.conditionicon
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  cityname,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xb30026ff),
                  ),
                ),
                const SizedBox(width: 50),
                Text(
                  countryname,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xb30026ff),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$temperaturec",
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xb30026ff),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      condition,
                      style: const TextStyle(
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                        color: Color(0xb30026ff),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 50),
                Image.network(
                  conditionicon,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}