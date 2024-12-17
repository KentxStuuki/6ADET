/*
Name: Mark Erolle D. Quiambao
Section: WD - 302
Class Code: 2198 - 6ADET
Date: Dec 17, 2024
Activity Name: Lab Assignment 1: Password Generator (Functions)
*/


import 'dart:io';
import 'dart:math';

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890!@#%^&*';
Random _rnd = Random();

void main() {
  print("-----------Password Generator-----------");
  passGenerator();
  print("---------------------------------------");
  print("Thank you for using the code..");
}

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

void passGenerator(){
  String strength;
  print("What type of password would you prefer?");
  print("---------------------------------------");
  print("Weak | weak");
  print("Medium | medium");
  print("Strong | strong");
  stdout.write('Please Enter your choice: \t');
  strength = stdin.readLineSync()!;
  print("---------------------------------------");

  if(strength ==  'Weak' || strength == 'weak'){
    print("Code Generated: ${getRandomString(8)}"); 
  }
  else if (strength == 'Medium' || strength == 'medium'){
    print("Code Generated: ${getRandomString(15)}");
  }
  else if(strength == 'Strong' || strength == 'strong'){
     print("Code Generated: ${getRandomString(25)}");
  }
  else{
    print("Invalid input. Please try again");
  }
  
}
