// Design a counter app with increment and decrement buttons. Use setState to update the displayed value as the buttons are pressed.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: CounterApp(), debugShowCheckedModeBanner: false,));
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        backgroundColor: Colors.teal.shade300,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () => decrement(),
              child: Icon(Icons.remove, size: 20,)
            ),
            SizedBox(width: 15,),
            Text("$count", style: TextStyle(fontSize: 18),),
            SizedBox(width: 15,),
            ElevatedButton(
              onPressed: () => increment(),
              child: Icon(Icons.add, size: 20,)
            )
          ],
        ),
      )
    );
  }

  decrement() {
    setState(() {
      count--;
    });
  }

  increment() {
    setState(() {
      count++;
    });
  }
}
