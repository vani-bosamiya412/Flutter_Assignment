// Add an Image.asset widget to display an image from your local assets folder. Experiment with different BoxFit properties like
// cover, contain, and fill.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ImageProperties(), debugShowCheckedModeBanner: false,));
}

class ImageProperties extends StatelessWidget {
  const ImageProperties({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image.asset Example"),
        backgroundColor: Colors.indigo.shade400,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 120,
              color: Colors.grey.shade300,
              child: Image.asset("morPankh.jpeg", fit: BoxFit.cover,),
            ),
            SizedBox(height: 25,),
            Container(
              width: 200,
              height: 120,
              color: Colors.grey.shade300,
              child: Image.asset("morPankh.jpeg", fit: BoxFit.contain,),
            ),
            SizedBox(height: 25,),
            Container(
              width: 200,
              height: 120,
              color: Colors.grey.shade300,
              child: Image.asset("morPankh.jpeg", fit: BoxFit.fill,),
            ),
          ],
        ),
      ),
    );
  }
}
