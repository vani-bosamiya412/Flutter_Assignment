// Build a Flutter app with an AppBar that has a title and a FloatingActionButton. Use the button to increment a counter displayed
// in the center of the screen.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: CounterScreen(), debugShowCheckedModeBanner: false,));
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  CounterScreenState createState() => CounterScreenState();
}

class CounterScreenState extends State<CounterScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        backgroundColor: Colors.green.shade50,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Text("Counter Value: $count", style: TextStyle(fontSize: 20),),
            SizedBox(height: 15,),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
