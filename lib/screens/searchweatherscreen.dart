import 'package:flutter/material.dart';
import 'package:flutter_apps/screens/weatherscreen.dart';

class SearchWeatherScreen extends StatelessWidget {
  SearchWeatherScreen({super.key});

  final formkey = GlobalKey<FormState>();
  final TextEditingController citycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Search City',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: citycontroller,
                  decoration: const InputDecoration(
                    labelText: "Enter City Name",
                    border: OutlineInputBorder(),
                  ),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter city name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: (){
                        String city = citycontroller.text;
                        if (formkey.currentState!.validate())
                          {
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (context) => WeatherScreen(city: city)
                            ),
                            );
                          }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                      child: Text("Search")
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}