// Write a program that accepts a number and checks if it is a prime number or not.

import 'dart:io';

bool isPrime(int num) {
  if(num <= 1) {
    return false;
  }
  for(int i = 2; i <= num / 2; i++) {
    if(num % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  print("Enter any number: ");
  int n = int.parse(stdin.readLineSync().toString());

  if(isPrime(n)) {
    print("$n is a prime number.");
  } else {
    print("$n is not a prime number.");
  }
}