// Implement a basic calculator that performs addition, subtraction, multiplication, or division based on the user’s choice.

import 'dart:io';

void main() {
  print("Basic Calculator");
  print("1. Addition \n2. Subtraction \n3. Multiplication \n4. Division");

  print("Enter your choice (1-4):");
  int choice = int.parse(stdin.readLineSync().toString());

  if(choice<=4) {
    print("Enter number-1: ");
    double a = double.parse(stdin.readLineSync().toString());

    print("Enter number-2: ");
    double b = double.parse(stdin.readLineSync().toString());

    double ans;

    switch(choice) {
      case 1: ans = a + b; print("Addition is $ans");
      case 2: ans = a - b; print("Subtraction is $ans");
      case 3: ans = a * b; print("Multiplication is $ans");
      case 4: ans = a / b; print("Division is $ans");
    }
  } else {
    print("Invalid choice! Please enter number between 1-4.");
  }
}