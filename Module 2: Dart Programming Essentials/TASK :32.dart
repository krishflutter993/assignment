import 'dart:io';

void main() {
  int secretNumber = 50;
  int userGuess = 0;

  print("guessing game!");
  print("number between 1 and 100.");

  while (userGuess != secretNumber) {
    stdout.write("Your guess: ");
    String? inputText = stdin.readLineSync();

    if (inputText == null || inputText.trim().isEmpty) {
      print("Input can't be empty. Try again.");
      continue;
    }

    int? parsedGuess = int.tryParse(inputText);
    if (parsedGuess == null) {
      print("That not a valid number. Try again.");
      continue;
    }

    userGuess = parsedGuess;

    if (userGuess > secretNumber) {
      print("Too high! Try a smaller number.");
    } else if (userGuess < secretNumber) {
      print("Too low! Try a bigger number.");
    } else {
      print("Congrats! You guessed it right.");
    }
  }
}
