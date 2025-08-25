// Create a simple "Hello World" Flutter app with a Text widget displaying "Hello, Flutter!"centered on the screen.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Hello(), debugShowCheckedModeBanner: false,));
}
class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello, Flutter!", style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
