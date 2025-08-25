// Create an app with two Text widgets. Apply different TextStyle properties (like font size, color, and weight) to each widget to
// explore styling options.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: TextWidget(), debugShowCheckedModeBanner: false,));
}
class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Widget")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is a Flutter Text Widget!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
            SizedBox(height: 10,),
            Text("This is Another Flutter Text Widget!", style: TextStyle(fontSize: 20, color: Colors.white, backgroundColor: Colors.purpleAccent),)
          ],
        ),
      ),
    );
  }
}
