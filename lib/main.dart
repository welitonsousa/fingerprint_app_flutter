import 'package:app_beacon/pages/homeScreen.dart';
import 'package:app_beacon/services/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fingerprint app',
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
