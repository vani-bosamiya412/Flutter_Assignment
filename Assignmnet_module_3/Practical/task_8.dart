// Create a screen with ListView.builder to display a list of names. When tapped, each name should print "Name tapped" in the console.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NameList(), debugShowCheckedModeBanner: false,));
}

class NameList extends StatelessWidget {

  final List names = ["Aarav", "Neha", "Vivaan", "Aditya", "Dia", "Ishaan", "Ananya", "Kabir", "Rohan", "Meera", "Arjun", "Priya", "Kavya", "Sneha"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Names List"),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(names[index]),
            onTap: () {
              print("${names[index]} Tapped");
            },
          );
        }
      ),
    );
  }
}
