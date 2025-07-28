// Write a recursive function to generate the Fibonacci series up to a specified number.

import 'dart:io';

int fibonacci(int n) {
  if(n == 0) {
    return 0;
  }
  if(n == 1) {
    return 1;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  print("Enter any number: ");
  int num = int.parse(stdin.readLineSync().toString());
  for(int i = 0; i < num; i++) {
    print(fibonacci(i));
  }
}