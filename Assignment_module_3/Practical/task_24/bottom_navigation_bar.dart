import 'package:flutter/material.dart';
import 'package:task_1/task_24/profile_screen.dart';
import 'package:task_1/task_24/task_24.dart';

import 'message_screen.dart';

class BottomNavigationBarEx extends StatelessWidget {
  const BottomNavigationBarEx({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) {
        if(index == 0) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NewsScreen()));
        }
        if(index == 1) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MessageScreen()));
        }
        if(index == 2) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileScreen24()));
        }
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ]
    );
  }
}
