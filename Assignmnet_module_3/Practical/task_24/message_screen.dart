import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message"),
        backgroundColor: Colors.lightBlue.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is the Message Screen", style: TextStyle(fontSize: 18),)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarEx(),
    );
  }
}
