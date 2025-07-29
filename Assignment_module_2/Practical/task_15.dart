// Write a program that counts the frequency of each character in a given string and stores the result in a map.

import 'dart:io';

void main() {
  print("Enter the word: ");
  String text = stdin.readLineSync().toString();

  Map<String, int> f = {};

  for(int i = 0; i < text.length; i++) {
    String char = text[i];
    if(f.containsKey(char)) {
      f[char] = f[char]! + 1;
    } else {
      f[char] = 1;
    }
  }
  
  print("Character Frequency:");
  f.forEach((key, value) {
    print("$key: $value");
  });
}