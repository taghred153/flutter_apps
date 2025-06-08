import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_apps/providers/newsprovider.dart';
import 'package:flutter_apps/providers/productprovider.dart';
import 'package:flutter_apps/providers/randomuserprovider.dart';
import 'package:flutter_apps/providers/registerprovider.dart';
import 'package:flutter_apps/providers/weatherprovider.dart';
import 'package:flutter_apps/screens/loginscreen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => RegisterProvider()),
      ChangeNotifierProvider(create: (context) => WeatherProvider()),
      ChangeNotifierProvider(create: (context) => RandomUserProvider()),
      ChangeNotifierProvider(create: (context) => NewsProvider()),
      ChangeNotifierProvider(create: (context) => ProductsProvider()),
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}