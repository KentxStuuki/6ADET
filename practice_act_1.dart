/*
Name: Mark Erolle D. Quiambao
Section: WD - 302
Class Code: 2198 - 6ADET
Activity Name: Practice Activity 1 <Modified code>: List, Loop, and condition
*/
import 'dart:io';

void main() {
  List myNumbers = [];
  int n=1, sum=0;
  print("Input numbers between 1 - 10[Type 0 to terminate input]: ");
  
  for (int  x = 0; n!= 0  ; x++){
    stdout.write("Number ${x + 1}: ");
    n = int.parse(stdin.readLineSync()!);
    if(n >= 1 && n <= 10){
      myNumbers.add(n);
      sum+=n;
    }
    else if(n!=0){
      print("Inputed numbers must be between 1 - 10[Type 0 to terminate input]: ");
    } 
  }
  print("--------------------------------------");
  print("All Inputed Values:");
  print("--------------------------------------");
  for (int x = 0; x < myNumbers.length; x++){
    print(myNumbers[x]);
  }
  print("--------------------------------------");
  print("Total: $sum");
}