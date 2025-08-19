import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false,));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade200,
      body: Center(
        child: Column(
          children: [
            Text("Hello, World!", style: TextStyle(fontSize: 18, color: Colors.white, backgroundColor: Colors.black),),
            SizedBox(height: 10,),
            Text("This is Vani")
          ],
        ),
      ),
    );
  }
}