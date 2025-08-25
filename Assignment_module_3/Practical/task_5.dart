// Create a responsive layout using a Row widget with three Container widgets, each with different background colors and widths.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: RowWidget(), debugShowCheckedModeBanner: false,));
}
class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Widget"),
        backgroundColor: Colors.blue.shade50
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                color: Colors.red,
                child: Center(child: Text("Red"),),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                color: Colors.green,
                child: Center(child: Text("Green"),),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                color: Colors.blue,
                child: Center(child: Text("Blue"),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}