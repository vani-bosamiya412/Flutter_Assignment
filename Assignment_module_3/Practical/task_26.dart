// Create an infinite scrolling list using ListView.builder that loads more data as the user scrolls to the bottom.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: InfiniteListScreen(), debugShowCheckedModeBanner: false,));
}

class InfiniteListScreen extends StatefulWidget {
  const InfiniteListScreen({super.key});

  @override
  State<InfiniteListScreen> createState() => _InfiniteListScreenState();
}

class _InfiniteListScreenState extends State<InfiniteListScreen> {
  List<int> items = [];
  bool isRunning = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startAddingItems();
  }

  Future startAddingItems() async {
    int count = 0;
    while(isRunning) {
      await Future.delayed(Duration(milliseconds: 1));
      setState(() {
        items.add(count++);
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    isRunning = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Item ${items[index]}"),
          );
        }
      ),
    );
  }
}
