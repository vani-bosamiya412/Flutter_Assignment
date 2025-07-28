// Create a program that calculates the area and circumference of a circle. Use constants to store the value of pi.

import 'dart:io';

void main() {
  const double pi = 3.14159;
  print("Enter the radius of the circle: ");
  double r = double.parse(stdin.readLineSync().toString());
  double a = pi * r * r;
  double c = 2 * pi * r;
  print("Area of the circle is $a");
  print("Circumference of the circle is $c");
}