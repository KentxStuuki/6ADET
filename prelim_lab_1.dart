/*
Name: Mark Erolle D. Quiambao
Section: WD-302
Activity Name: Prelim Hands on Lab 1: Student Detail
*/
import 'dart:io';

void main() {
  List <Map> studList = [];

  String name;
  int number;
  String studname;
  int studnum;
  int maxunits = 0;
  int totalunits = 0;
  int year;
  int subcount = 0;

  print("Please Input your information");
  
  stdout.write("Please enter your name:  ");
  name = stdin.readLineSync()!;

  stdout.write("Input student number: ");
  number = int.parse(stdin.readLineSync()!);

  stdout.write("Input year: ");
  year = int.parse(stdin.readLineSync()!);

  stdout.write("Input max units allowed to enroll: ");
  maxunits = int.parse(stdin.readLineSync()!);
  print("============================================================");

  print("Student Name: $name");
  print("Student Number: $number");
  Map courses = {};

  do {
    stdout.write("Subject [${subcount + 1}]: ");
    String subject = stdin.readLineSync()!;

    stdout.write("Equivalent unit: ");
    int units = int.parse(stdin.readLineSync()!);


    if (totalunits + units > maxunits) {
      print("Cannot enroll in $subject. Exceeds maximum allowed units.\n");
    } else {
      courses[subject] = units;  
      totalunits += units;      
      subcount++;
    }
    studList.add({
      "name": name,
      "number": number,
      "year": year,
      "maxunits": maxunits,
      "courses": courses,
      "totalunits": totalunits
    });

  } while (totalunits < maxunits);  

  print("============================================================");
  print("Student Details:");
  print("\nName: $name");
  print("Student Number: $number");
  print("Student year: $year");
  print("Courses Enrolled:");
  courses.forEach((subject, units) {
  print("\t\t$subject: $units units");
  });
   print("\t\tTotal units enrolled ==> $maxunits");
  print("============================================================");
}
