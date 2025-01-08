import 'dart:io';
import 'dart:math';

void main() {
  // I changed the small r into a Bigger R so that the Random function can be used properly.
  final random = Random();

  List<int> generatedNumbers = List.generate(5, (_) => random.nextInt(50) + 1);

  print("Welcome to the guessing game!");

  print("Try to guess 5 numbers between 1 and 50.");

// And I corrected the [] into <> so that it the code wont read it as a array but rather a function to make the userNumbers a integer not a bolean.
  List<int> userNumbers = [];

  for (int i = 1; i <= 5; i++) {
    stdout.write("Enter number $i: ");

// and ive also changed the "int.tryparse" into "int.parse" because apperently the "try" is like a function that cant be used when calling or naming your varriables in any coding languge.
    int? userInput = int.parse(stdin.readLineSync() ?? '');

    while (userInput == null || userInput < 1 || userInput > 50) {
      stdout.write("Invalid input. Please enter a number between 1 and 50: ");

      userInput = int.parse(stdin.readLineSync() ?? '');
    }

// I also corrected the proper spelling of the "userinput" into a "userInput" to match the current declared varriable it uses before its been called.
    userNumbers.add(userInput);
  }

  int matches = 0;

  for (int number in userNumbers) {
    if (generatedNumbers.contains(number)) {
      matches++;
    }
  }
  // And lastly by adding "$" on the "{generatedNumbers.join(', ')}" so that when this line is being excecuted it wont produce a "{generatedNumbers.join(', ')}" so by adding the "$" it calls all of the 5 random number the code assigned and then displays them as the user inputted its 5 numbers.

  print("\nGenerated Numbers: ${generatedNumbers.join(', ')}");

  print("Your Numbers: ${userNumbers.join(', ')}");

  print("You have $matches match(es).");

  if (matches >= 3) {
    print("Congratulations! You win!");
  } else {
    print("Sorry, you lose. Better luck next time!");
  }
}
