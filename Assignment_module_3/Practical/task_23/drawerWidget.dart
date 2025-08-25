import 'package:flutter/material.dart';
import 'package:task_1/task_23/profile.dart';
import 'package:task_1/task_23/settings.dart';
import 'package:task_1/task_23/task_23.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                color: Colors.teal
            ),
            accountName: Text("Vani", style: TextStyle(fontSize: 18),),
            accountEmail: Text("vani@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              foregroundColor: Colors.teal,
              child: Text("V", style: TextStyle(fontSize: 40),),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen23()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
            },
          ),
        ],
      ),
    );
  }
}
