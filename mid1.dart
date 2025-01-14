/*
Name: Mark Erolle D. Quiambao
Section: WD - 302
Activity: Midterm Seatwork 1: Constructors
Date: January 14, 2025
*/

import 'dart:io';

class animal {
  String breed = "";
  String size = "";
  String age = "";
  String color = "";
  
  animal.nepolitan () {
    this.breed = "Nepolitan";
    this.size = "Large";
    this.age = "5 years";
    this.color = "Black";

  }
  animal.maltese() {
    this.breed = "Maltese";
    this.size = "Small";
    this.age = "2 years";
    this.color = "White";
  }

  animal.chow () {
    this.breed = "Chow chow";
    this.size = "Meduim";
    this.age = "3 years";
    this.color = "Brown";
  }
}
class seperator{
  String line ="";
  seperator.line () {
    this.line = "------------------------------";
  }
}

void main (){
  int choice = 1;
  animal Animal1 = new animal.nepolitan();
  animal Animal2 = new animal.chow();
  animal Animal3 = new animal.maltese();
  seperator sep = new seperator.line(); 

while (choice != 0){
  print("${sep.line}");
  print("Choose Size of Dogs:");
  print("[1] Large");
  print("[2] Meduim");
  print("[3] Small");
  print("[0] Exit");
  print("${sep.line}");
  stdout.write("Enter Choice:");
  choice = int.parse(stdin.readLineSync()!);

    if (choice ==  0){
      print("${sep.line}");
      print("Thank you for using this code.");
      break;
    } 

    else if (choice == 1) {
      print("${sep.line}");
      print("Breed: ${Animal1.breed}");
      print("Size: ${Animal1.size}");
      print("Age: ${Animal1.age}");
      print("Color: ${Animal1.color}");
    }

    else if (choice == 2){
      print("${sep.line}");
      print("Breed: ${Animal2.breed}");
      print("Size: ${Animal2.size}");
      print("Age: ${Animal2.age}");
      print("Color: ${Animal2.color}");

    }
    else if (choice == 3) {
      print("${sep.line}");
      print("Breed: ${Animal3.breed}");
      print("Size: ${Animal3.size}");
      print("Age: ${Animal3.age}");
      print("Color: ${Animal3.color}");
    }
    
    else {
     print("${sep.line}");
      print("Sorry but that type of choice is currently unavailable please choose between [1-3].");
    }
  }
}