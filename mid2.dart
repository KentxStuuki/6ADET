/*
Name: Mark Erolle D. Quiambao
Section: WD - 302
Activity: Midterm Seatwork 2: Setters and getters
Date: January 14, 2025
*/

import 'dart:io';

class info {
  String fname = "";
  String lname = "";
  int age = 0;
  String sid = "";
  String address = "";
  String choice = "";

  void set firstName(String fname){
    this.fname = fname;
  }
  String get firstName{
    return fname;
  }

  void set lastName(String lname){
    this.lname = lname;
  }
  String get lastName{
    return lname;
  }

  void set Age(int age){
    this.age = age;
  }
  int get Age{
    return age;
  }

  void set Schoolid(String sid){
    this.sid = sid; 
  }
  String get Schoolid{
    return sid;
  }
  void set Address(String address){
    this.address = address;
  }
  String get Address{
    return address;
  }

}

class seperator{
  String line ="";
  seperator.line () {
    this.line = "------------------------------";
  }
}

// class choises{
//   String yesno ="";
//   void set Yesno(String yesno){
//     this.Yesno = yesno;
//   }
//   String get Yesno{
//     return yesno;
//   }
// }

void main (){
  String fname ="";
  String lname = "";
  int age = 0;
  String sid = "";
  String address = "";
  seperator sep = new seperator.line(); 
  info studentinfo = new info (); 
  int choice = 1;

  while(choice != 0){
    print("${sep.line}");
    stdout.write("Please Enter your Firstname: ");
    fname = stdin.readLineSync()!;
    studentinfo.firstName = fname;
    while(fname.isEmpty){
      print('Field cannot be empty');
      stdout.write("Please Enter your Firstname: ");
      fname = stdin.readLineSync()!;
      studentinfo.firstName = fname;
    }

    stdout.write("Please Enter your Lastname: ");
    lname = stdin.readLineSync()!;
    studentinfo.lastName = lname;
    while(lname.isEmpty){
      print('Field cannot be empty');
      stdout.write("Please Enter your lastname: ");
      lname = stdin.readLineSync()!;
      studentinfo.lastName = lname;
    }

    stdout.write("Please Enter your Age: ");
    age = int.parse(stdin.readLineSync()!);
    studentinfo.Age = age;
  
    stdout.write("Please Enter your School id: ");
    sid = stdin.readLineSync()!;
    studentinfo.Schoolid = sid;
    while(sid.isEmpty){
      print('Field cannot be empty');
      stdout.write("Please Enter your School id: ");
      sid = stdin.readLineSync()!;
      studentinfo.Schoolid = sid;
    }

    stdout.write("Please Enter your Address: ");
    address = stdin.readLineSync()!;
    studentinfo.Address = address;
    while(address.isEmpty){
      print('Field cannot be empty');
      stdout.write("Please Enter your Address: ");
      address = stdin.readLineSync()!;
      studentinfo.Address = address;
    }
    print("${sep.line}"); 
    print("Your Inputed information: ");
    print("Firstname: ${studentinfo.firstName}");
    print("Lastname: ${studentinfo.lastName}");
    print("Age: ${studentinfo.Age}");
    print("Student ID: ${studentinfo.sid}");
    print("Address: ${studentinfo.Address}");
    print("${sep.line}");
    
    stdout.write("Press [0] to Exit: ");
    choice = int.parse(stdin.readLineSync()!);
    if (choice == 0){
      break;
    }
  }
}
  


