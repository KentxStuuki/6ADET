/*
Name: Mark Erolle D. Quiambao
Section: WD - 302
Class Code: 2198 - 6ADET
Date: Dec 17, 2024
Activity Name: Hands on Lab Act 4: Guessing Game Program
 */
import 'dart:io';
import 'dart:math'; 

void checkernum(){
  int random = Random().nextInt(100) +1;
  int guess;
  int attempts = 0;
  /*print("The correct answer is ${random}");*/

  print("Welcome to the Guessing Game!"); 

  for(int x = 0; x <= 20; x++){
  stdout.write('Guess a number: \t');
  guess = int.parse(stdin.readLineSync()!);
  if (guess > random){
      print("Guess is too high. Make it lower");
      print("Try Again!");
    }
  if (guess < random){
      print("Guess is too low. Make it Higer");
      print("Try Again!");
    }
  attempts++;
   if (guess == random){
    print("You guessed it right! It took you $attempts attempts out of 20.");
    break;
  }

} 
print("The correct answer is ${random}");
}

main(){
  checkernum();
  print("Thanks for playing!");
}
  
