// Create a two-screen app. The first screen should have a button that navigates to the second screen. Display a welcome message on the
// second screen.

import 'package:flutter/material.dart';
import 'package:task_1/task_21/welcome_page.dart';

void main() {
  runApp(MaterialApp(home: NavigationApp(), debugShowCheckedModeBanner: false,));
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomePage()));
              },
              child: Text("Next", style: TextStyle(fontSize: 18),)
            )
          ],
        ),
      ),
    );
  }
}
