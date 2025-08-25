import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';

class ProfileScreen24 extends StatelessWidget {
  const ProfileScreen24({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.lightBlue.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is the Profile Screen", style: TextStyle(fontSize: 18),)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarEx(),
    );
  }
}
