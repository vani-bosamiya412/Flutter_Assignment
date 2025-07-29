// Write a program that takes a user's name and age as input and prints a welcome message that includes their name and how many years
// they have left until they turn 100.

import 'dart:io';

void main() {
  print("Enter you name: ");
  String name = stdin.readLineSync().toString();
  print("Enter you age: ");
  int age = int.parse(stdin.readLineSync().toString());
  int yl = 100 - age;
  print("Welcome, $name!");
  print("$yl years are left until you turn 100.");
}