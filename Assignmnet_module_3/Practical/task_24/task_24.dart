// Design a bottom navigation bar with three tabs: News, Messages, and Profile. Change the displayed content based on the selected tab.

import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';

void main() {
  runApp(MaterialApp(home: NewsScreen(), debugShowCheckedModeBanner: false,));
}

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
        backgroundColor: Colors.lightBlue.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is the News Screen", style: TextStyle(fontSize: 18),)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarEx(),
    );
  }
}
