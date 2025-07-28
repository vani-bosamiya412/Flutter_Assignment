// Create a program that accepts a number from the user and performs division by another number. Use exception handling to manage
// division by zero errors.

import 'dart:io';

void main() {
  try {
    print("Enter numerator: ");
    double num1 = double.parse(stdin.readLineSync().toString());

    print("Enter denominator: ");
    double num2 = double.parse(stdin.readLineSync().toString());

    if(num2 == 0) {
      throw Exception("Cannot divide by zero.");
    }

    double res = num1 / num2;
    print("Result: $res");

  } catch(e) {
    print(e);
  }
}