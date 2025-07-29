// Create a program that converts temperature from Celsius to Fahrenheit and vice versa. Implement functions to handle both conversions
// and let the user choose the conversion type.

import 'dart:io';

double cf(double c) {
  return (c * 9 / 5) + 32;
}
double fc(double f) {
  return (f - 32) * 5 / 9;
}
void main() {
  print("Temperature Convertor \n1. Celsius to Fahrenheit \n2. Fahrenheit to Celsius");
  print("Choose an option 1 or 2: ");
  int choice = int.parse(stdin.readLineSync().toString());
  if(choice == 1) {
    print("Enter temperature in Celsius: ");
    double c = double.parse(stdin.readLineSync().toString());
    double f = cf(c);
    print("$c°C = $f°F");
  } else if(choice == 2) {
    print("Enter temperature in Fahrenheit: ");
    double f = double.parse(stdin.readLineSync().toString());
    double c = fc(f);
    print("$f°F = $c°C");
  } else {
    print("Invalid choice! Please enter 1 or 2.");
  }
}