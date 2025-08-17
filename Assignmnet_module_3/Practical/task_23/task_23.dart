// Create a navigation drawer that allows switching between three different screens: Home, Profile, and Settings.

import 'package:flutter/material.dart';

import 'drawerWidget.dart';

void main() {
  runApp(MaterialApp(home: HomeScreen23(), debugShowCheckedModeBanner: false,));
}

class HomeScreen23 extends StatelessWidget {
  const HomeScreen23({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.teal.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is the Home Screen", style: TextStyle(fontSize: 18),)
          ],
        ),
      ),
      drawer: DrawerWidget(),
    );
  }
}