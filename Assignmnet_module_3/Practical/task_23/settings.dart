import 'package:flutter/material.dart';

import 'drawerWidget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.teal.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is the Settings Screen", style: TextStyle(fontSize: 18),)
          ],
        ),
      ),
      drawer: DrawerWidget(),
    );
  }
}
