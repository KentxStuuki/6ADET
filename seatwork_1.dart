/*
Name: Mark Erolle D. Quiambao
Section: WD - 302
Class Code: 2198 - 6ADET
Date: Dec 17, 2024
Activity Name: HSeatwork 1: Calculator Program
*/

import 'dart:io';

void cacl() {
  while (true) {
    double num1 = getNumber('Enter first number: ');
    double num2 = getNumber('Enter second number: ');

    double result;
    print('Choose an operation [1-5]');
    print('1. Add [+]');
    print('2. Subtract [-]');
    print('3. Multiply [*]');
    print('4. Divide [/]');
    print('5. Exit');
    stdout.write('Enter your choice [1-5]: ');

    String? choice = stdin.readLineSync();
    
    if (choice == null || choice.isEmpty) {
      choice = '';  
    }
    if (choice == '5') {
      print('Exiting the calculator... Thank you for using the Calculator....');
      break;
    }

    switch (choice) {
      case '1':
        result = add(num1, num2);
        print('Result: $num1 + $num2 = $result');
        break;
      case '2':
        result = subtract(num1, num2);
        print('Result: $num1 - $num2 = $result');
        break;
      case '3':
        result = multiply(num1, num2);
        print('Result: $num1 * $num2 = $result');
        break;
      case '4':
        if (num2 == 0) {
          print('Error: Division by zero is not allowed.');
        } else {
          result = divide(num1, num2);
          print('Result: $num1 / $num2 = $result');
        }
        break;
      default:
        print('Invalid choice, please try again and choose between 1 - 5 only.');
        break;
    }
  }
}

double getNumber(String prompt) {
  double num;
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    
    if (input == null || input.isEmpty) {
      print('Input cannot be empty. Please input something.');
      continue;
    }
    
    num = double.tryParse(input) ?? -1;
    
    if (num != -1) break;
    print('Invalid number, please try again.');
  }
  return num;
}

double add(double a, double b) => a + b;
double subtract(double a, double b) => a - b;
double multiply(double a, double b) => a * b;
double divide(double a, double b) => a / b;


void main() {
  print('--- Simple Calculator ---');
  cacl();
}

