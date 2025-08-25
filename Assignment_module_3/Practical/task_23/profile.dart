import 'package:flutter/material.dart';
import 'package:task_1/task_23/drawerWidget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.teal.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is the Profile Screen", style: TextStyle(fontSize: 18),)
          ],
        ),
      ),
      drawer: DrawerWidget(),
    );
  }
}
