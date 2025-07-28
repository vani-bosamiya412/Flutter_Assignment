// Implement a calculator that catches invalid input errors (like entering a string instead of a number). Display appropriate error
// messages and ask for re-entry.

import 'dart:io';

void main() {
  int num;
  while(true) {
    print("Enter any number: ");
    var input = stdin.readLineSync().toString();
    try {
      num = int.parse(input);
      break;
    } catch(e) {
      print("Error: Invalid input! Please enter a valid integer number.");
    }
  }
  print("You entered: $num");
}