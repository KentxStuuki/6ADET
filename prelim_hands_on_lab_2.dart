/*
Name: Mark Erolle D. Quiambao
Section: WD - 302
Class Code: 2198 - 6ADET
Activity Name: Prelim hands on lab 2: Using For.. Loop
*/
import 'dart:io';

void main() {
  List myNumbers = [];
  int n=1, sum=0, ave=10;
  print("--------------------------------------");
  print("Input Grades");
  print("--------------------------------------");
  
  for (int  x = 0; x<= 9  ; x++){
    stdout.write("Number ${x + 1}: ");
    n = int.parse(stdin.readLineSync()!);
    myNumbers.add(n);
    sum+=n;
  }
  print("--------------------------------------");
  print("All Inputed Values:");
  print("--------------------------------------");
  for (int x = 0; x < myNumbers.length; x++){
    print(myNumbers[x]);
  }
  print("--------------------------------------");
   print("Sum of all the total inputed values: $sum");
  print("The average is ${sum/ave}");
  print("--------------------------------------");
}