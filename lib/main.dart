import 'package:flutter/material.dart';
import 'Screen1.dart';
import 'Screen2.dart';
import 'Screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(), // Set the initial screen
      routes: {
        // Define the routes for navigation
        'rout screen1_2': (context) => Screen2(),
        'rout screen2_1': (context) => Screen1(),
        'rout screen1_3': (context) => Screen3(),
        'rout screen2_3': (context) => Screen3(),
        'rout screen3_1': (context) => Screen1(),

      },
    );
  }
}

