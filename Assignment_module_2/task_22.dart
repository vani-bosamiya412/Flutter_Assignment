// Write a program that reads a file and displays its contents. Handle potential file not found exceptions and display an error
// message if the file doesn’t exist.

import 'dart:io';

void main() {
  print("Enter the file path: ");
  String path = stdin.readLineSync().toString();

  try {
    var f = File(path);
    String content = f.readAsStringSync();
    print("-------------File Content-------------");
    print(content);
  } catch(e) {
    print("Error: Could not find the file. Please check if the file exists.");
  }
}