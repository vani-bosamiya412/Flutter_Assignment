// Create a program that accepts a list of integers from the user. Use exception handling to handle cases where the user inputs
// non-integer values.

import 'dart:io';

void main() {
  List<int> l1 = [];

  print("How many numbers do you want to enter?");
  var count1 = stdin.readLineSync().toString();

  int count;
  try {
    count = int.parse(count1);
  } catch(e) {
    print("Error: Invalid input! Exiting.");
    return;
  }

  for(int i = 0; i < count; i++) {
    while(true) {
      print("Enter integer: ${i + 1}");
      var a = stdin.readLineSync().toString();
      try {
        int num = int.parse(a);
        l1.add(num);
        break;
      } catch(e) {
        print("Error: Invalid input! Please enter an integer.");
      }
    }
  }
  print("You entered: $l1");
}