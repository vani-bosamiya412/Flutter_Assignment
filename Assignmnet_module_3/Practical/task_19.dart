// Design a search bar using TextField and display suggestions below as the user types. Filter suggestions based on input.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SearchBarEx(), debugShowCheckedModeBanner: false,));
}

class SearchBarEx extends StatefulWidget {
  const SearchBarEx({super.key});

  @override
  State<SearchBarEx> createState() => _SearchBarExState();
}

class _SearchBarExState extends State<SearchBarEx> {
  TextEditingController search = TextEditingController();

  List<String> items = ["Apple", "Banana", "Mango", "Grape", "Kiwi", "Pineapple", "Orange", "Watermelon", "Strawberry", "Papaya", "Guava"];
  List<String> filteredItems = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filteredItems = items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Bar With Suggestions"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            TextField(
              controller: search,
              onChanged: filterSearch,
              decoration: InputDecoration(
                hintText: "Search...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredItems[index]),
                    onTap: () {
                      setState(() {
                        search.text = filteredItems[index];
                        filteredItems = [filteredItems[index]];
                      });
                    },
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }

  filterSearch(String value) {
    setState(() {
      filteredItems = items.where((item) => item.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }
}
