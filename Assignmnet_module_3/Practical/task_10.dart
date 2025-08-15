// Create a shopping cart app with a list of items and an "Add to Cart" button for each. When the button is pressed, update a counter in
// the AppBar showing the total items in the cart.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ShoppingCartApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class ShoppingCartApp extends StatefulWidget {
  const ShoppingCartApp({super.key});

  @override
  State<ShoppingCartApp> createState() => _ShoppingCartAppState();
}

class _ShoppingCartAppState extends State<ShoppingCartApp> {
  int cartCount = 0;

  List<String> items = ["Apples", "Bananas", "Oranges", "Mangoes", "Grapes"];

  void addToCart() {
    setState(() {
      cartCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
        actions: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Center(
              child: Text(
                "Cart: $cartCount",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            trailing: ElevatedButton(
              onPressed: addToCart,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white
              ),
              child: Text("Add to Cart"),
            ),
          );
        },
      ),
    );
  }
}
