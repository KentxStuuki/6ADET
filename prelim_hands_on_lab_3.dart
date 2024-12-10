/*
Name: Mark Erolle D. Quiambao
Section: WD - 302
Class Code: 2198 - 6ADET
Activity Name: Prelim Hands on Lab Act 3: Passcode Program
*/
import 'dart:io';

void main() {
  dynamic passcode = '1122m!';
  dynamic pass;
  print("--------------------------------------");
  for (int  x = 0; x<= 3  ; x++){
  stdout.write("Enter Passcode: ");
  pass = stdin.readLineSync()!;;
  print("--------------------------------------");
    if (pass == passcode){
      print("Access granted!!!");
      break;
    }
    else{
      print("Access Denied!!!");
    }
  } if (pass != passcode) print("ACCOUNT LOCKED");
  print("--------------------------------------");
}