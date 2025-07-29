// Write a function to calculate the factorial of a number entered by the user.

import 'dart:io';

fact(int num) {
  int fact = 1;

  for(int i = 1; i <= num; i++) {
    fact *= i;
  }

  print("Factorial of $num is $fact");
}
void main() {
  print("Enter number to find factorial for:");
  int n = int.parse(stdin.readLineSync().toString());

  fact(n);
}