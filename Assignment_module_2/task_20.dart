// Write a program that simulates a shopping cart. Define classes for Product, Cart, and Order. Allow users to add products to the cart
// and calculate the total price of the items.

import 'dart:io';

class Product {
  var pname;
  var price;

  Product(this.pname, this.price);
}
class Cart {
  List<Product> items = [];

  add(Product p) {
    items.add(p);
  }

  double getTotal() {
    double total = 0;
    for (var item in items) {
      total += item.price;
    }
    return total;
  }

  String getBill() {
    String bill = "\n---------------------BILL---------------------\n\n";
    bill += "Items:\n";
    for (var item in items) {
      bill += "${item.pname} - Rs. ${item.price}\n";
    }
    bill += "\n----------------------------------------------\n";
    bill += "Total Amount: Rs. ${getTotal()}\n";
    return bill;
  }
}
class Order {
  Cart cart;
  String customerName;

  Order(this.cart, this.customerName);

  void placeOrder() {
    String bill = cart.getBill();
    print(bill);

    String path = "D:\\stationery_bill.txt";
    var file = File(path);
    file.writeAsStringSync("Customer: $customerName\n" + bill);
    print("Bill saved successfully to: $path");
  }
}

void main() {
  print("Enter your name: ");
  String name = stdin.readLineSync().toString();

  Cart cart = Cart();

  while (true) {
    print("\n------------------MENU------------------");
    print("1. Pen - Rs. 10");
    print("2. Pencil - Rs. 5");
    print("3. Notebook - Rs. 40");
    print("4. Eraser - Rs. 3");
    print("5. Sharpener - Rs. 5");
    print("6. Ruler - Rs. 15");
    print("7. Marker - Rs. 25");
    print("8. Highlighter - Rs. 30");
    print("9. Sticky Notes - Rs. 20");
    print("10. Folder - Rs. 35");
    print("11. Generate Bill");

    print("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync().toString());

    switch (choice) {
      case 1:
        cart.add(Product("Pen", 10));
        break;
      case 2:
        cart.add(Product("Pencil", 5));
        break;
      case 3:
        cart.add(Product("Notebook", 40));
        break;
      case 4:
        cart.add(Product("Eraser", 3));
        break;
      case 5:
        cart.add(Product("Sharpener", 5));
        break;
      case 6:
        cart.add(Product("Ruler", 15));
        break;
      case 7:
        cart.add(Product("Marker", 25));
        break;
      case 8:
        cart.add(Product("Highlighter", 30));
        break;
      case 9:
        cart.add(Product("Sticky Notes", 20));
        break;
      case 10:
        cart.add(Product("Folder", 35));
        break;
      case 11:
        Order order = Order(cart, name);
        order.placeOrder();
        return;
      default:
        print("Invalid choice. Please select a valid item.");
    }
  }
}