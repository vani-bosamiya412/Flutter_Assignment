// Write a program to take a number from the user and determine if it’s even or odd.

import 'dart:io';

void main() {
  print("Enter any number: ");
  int num = int.parse(stdin.readLineSync().toString());
  if(num % 2 == 0) {
    print("$num is an even number.");
  } else {
    print("$num is a odd number.");
  }
}