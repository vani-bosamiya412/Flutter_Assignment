import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(args ?? "No data received", style: TextStyle(fontSize: 20),),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back to Home")
            )
          ],
        ),
      ),
    );
  }
}
