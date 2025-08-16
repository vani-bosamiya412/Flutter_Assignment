// Develop a three-screen app with a home, details, and settings screen. Use Navigator.pushNamed for navigation, and pass data between screens.

import 'package:flutter/material.dart';
import 'package:task_1/task_22/details.dart';
import 'package:task_1/task_22/settings.dart';

import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/details': (context) => DetailsScreen(),
        '/settings': (context) => SettingsScreen()
      },
    )
  );
}