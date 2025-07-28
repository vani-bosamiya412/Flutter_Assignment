// Create a function that checks if a string is a palindrome (reads the same backward as forward).

import 'dart:io';

bool isPalindrome(String text) {
  return text == text.split('').reversed.join('');
}
void main() {
  print("Enter the word: ");
  String input = stdin.readLineSync().toString();
  
  if(isPalindrome(input)) {
    print("$input is a palindrome");
  } else {
    print("$input is not a palindrome");
  }
}