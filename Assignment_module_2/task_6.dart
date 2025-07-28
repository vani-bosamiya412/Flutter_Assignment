// Create a simple grading system that takes a student’s score as input and prints their grade:
//  A: 90–100
//  B: 80–89
//  C: 70–79
//  D: 60–69
//  F: Below 60

import 'dart:io';

void main() {
  print("Enter your score: ");
  int score = int.parse(stdin.readLineSync().toString());

  if(score>=90) {
    print("You got A grade.");
  } else if(score >= 80) {
    print("You got B grade.");
  } else if(score >= 70) {
    print("You got C grade.");
  } else if(score >= 60) {
    print("You got D grade.");
  } else {
    print("You got F grade.");
  }
}