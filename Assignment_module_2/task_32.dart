// Implement a simple number guessing game where the computer generates a random number, and the user has to guess it. Use a lambda
// function to provide hints, such as “too high” or “too low.”

import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  int numberToGuess = random.nextInt(100) + 1;

  print("Guess the number between 1 and 100!");

  while(true) {
    print("Enter your guess: ");
    String? input = stdin.readLineSync().toString();
    int? guess = int.tryParse(input);

    if(guess == null) {
      print("Please enter a valid number.");
      continue;
    }

    if(guess > numberToGuess) {
      print("Too High!");
    } else if (guess < numberToGuess) {
      print("Too Low!");
    } else {
      print("Correct!");
      break;
    }
  }
}