// Implement a custom-styled list using ListTile widgets with leading icons, titles, and trailing icons (like a delete button).

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: CustomList(), debugShowCheckedModeBanner: false,));
}

class CustomList extends StatefulWidget {
  const CustomList({super.key});

  @override
  State<CustomList> createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  List<String> items = ["a", "b", "c", "d", "e"];

  deleteItems(int index) {
    setState(() {
      items.removeAt(index);
    });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Item deleted")));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom-Style List"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 3,
            child: ListTile(
              leading: Icon(Icons.task, color: Colors.blue,),
              title: Text(items[index], style: TextStyle(fontSize: 18),),
              trailing: IconButton(
                onPressed: () { deleteItems(index); },
                icon: Icon(Icons.delete, color: Colors.red,),
              )
            ),
          );
        }
      ),
    );
  }
}
