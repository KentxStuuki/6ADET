/*
Name: Mark Erolle D. Quiambao
Section: WD - 302
Activity Name: Midterm Lab Assignment 1: Polymorphism and encapsulation
Class Code: 2198-6ADET

I decided to put everything in one file so that the submission won't be a mess
References:
    https://dart.dev/docs
    https://www.tutorialspoint.com/dart_programming/index.htm
    https://docs.flutter.dev/get-started/fundamentals/dart
    https://www.geeksforgeeks.org/dart-tutorial/

    Some reference were obtain in the modules of the 6ADET
    And on my Github: https://github.com/KentxStuuki/6ADET.git
*/

/*My imports*/
import 'dart:io';
import 'dart:math';

/* My base class for Person */
class person {
  String name = "";
  String email = "";

  void set Name(String name) {
    this.name = name;
  }

  String get Name {
    return name;
  }

  void set Email(String email) {
    this.email = email;
  }

  String get Email {
    return email;
  }
  void display() {
    print("Name: $name");
    print("Email: $email");
  }
}

//I added this class to use as a seperator for my code ouput so that the main code won't be a mess.
class seperator{
  String sep = "";
  void set Sep(String sep) {
    this.sep = sep;
  }

  String get Sep {
    return sep;
  }

  void display() {
    print("--------------------------------------------------------");
  }
}
// Similar to the Seperator i added loading just for a little design on my code.
  class loading{
    String load = "";
  void set Load(String load) {
    this.load = load;
  }

  String get Load {
    return load;
  }

  void display() {
    print("\nLoading please wait......\n");
  }
  }

/* Student class with extending Person at first i had a problem on how to get the person inherits or behave like the student but as i search extend was showed and i used to extends the values i have on the person so that i can use it in my student class */
class student extends person {
  int studid = 0;

  void set Studid(int studid) {
    this.studid = studid;
  }

  int get Studid {
    return studid;
  }
  //It auto matically typed it in my vscode this method overrides a method in the parent class Person
  @override
  void display() {
    print("Student personal information");
    print("--------------------------------------------------------");
    print("Student ID: $studid");
    print("Name: $name");
    print("Email: $email");
  }
}
// This is my Employee class that is also extended to the persons class where it also uses the override so taht i can call up the value from the persons class.
class employee extends person{
  int employeeid = 0;

  void set Employeeid(int employeeid) {
    this.employeeid = employeeid;
  }

  int get Employeeid {
    return employeeid;
  }

  @override
  void display() {
    print("Employee personal information");
    print("--------------------------------------------------------");
    print("Employee ID: $employeeid");
    print("Name: $name");
    print("Email: $email");
  }
}

//This is my password generator that i got from the previous activity.
String generatetempopass() {
  const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  Random random = Random();
  return List.generate(10, (index) => chars[random.nextInt(chars.length)]).join();
}

void main() {
  String category = "";
  String emailInput = "";
  String passwordInput = "";
  String newpass = "";
  String tempopass = "";
  person personinfo = new person();
  seperator sep = new seperator();
  loading load = new loading();

  while (true) {
    sep.display();
    print("Welcome to Polymorphism and encapsulation program");
    sep.display();
    print("Are you a Student or an Employee?");
    print("[1] Student \n[2] Employee \n[3] Exit");
    sep.display();
    
    stdout.write("Please input your choice here: ");
    category = stdin.readLineSync()!;
    sep.display();
    //This while loop prevents the name to be inputed so that the user won't leave it blank
    while (category.isEmpty) {
      print('Field cannot be empty');
      stdout.write("Please input your Choice again: ");
      category = stdin.readLineSync()!;
      sep.display();
    }

    if (category == "3") {
      print("\tThank you for using our program!");
      sep.display();
      break;
    } 
    else if (category == "1") {
      student stud = new student();
      print("Inputing as a Student");
      stdout.write("Please input your Student number: ");
      stud.studid = int.parse(stdin.readLineSync()!);

      stdout.write("Please input your name: ");
      stud.name = stdin.readLineSync()!;
      //This while loop prevents the student name to be inputed so that the user won't leave it blank
      while (stud.name.isEmpty) {
      print('Field cannot be empty');
      stdout.write("Please input your name: ");
      stud.name = stdin.readLineSync()!;
      }

      stdout.write("Please input your email: ");
      stud.email = stdin.readLineSync()!;
      //This while loop prevents the student email to be inputed so that the user won't leave it blank
      while (stud.email.isEmpty) {
      print('Field cannot be empty');
      stdout.write("Please input your Email: ");
      stud.email = stdin.readLineSync()!;
      }
      sep.display();
      //This line assigns the stud behave like personinfo.
      personinfo = stud; 

    } else if (category == "2") {
      
      employee emp = new employee();

      stdout.write("Please input your Employee number: ");
      emp.employeeid = int.parse(stdin.readLineSync()!);

      stdout.write("Please input your name: ");
      emp.name = stdin.readLineSync()!;
      //This while loop prevents the employee name to be inputed so that the user won't leave it blank
      while (emp.name.isEmpty) {
      print('Field cannot be empty');
      stdout.write("Please input your name: ");
      emp.name = stdin.readLineSync()!;
      }

      stdout.write("Please input your email: ");
      emp.email = stdin.readLineSync()!;
      //This while loop prevents the Employee email to be inputed so that the user won't leave it blank
      while (emp.email.isEmpty) {
      print('Field cannot be empty');
      stdout.write("Please input your Email: ");
      emp.email = stdin.readLineSync()!;
      }
      sep.display();
      //This line assigns the emp behave like personinfo.
      personinfo = emp; 

    } 
    else {
      print("Invalid input. Please choose only between [1-3].");
      continue;
    }
    //This calls out the personinfo and displays the stud/emp id, name, email. 
    personinfo.display();

    tempopass = generatetempopass();
    sep.display();
    print("Here is your temporary password: $tempopass ");
    sep.display();
    print("Please Login using your Registered Email\nand Temporary Password.");
    sep.display();

    while (true) {
      stdout.write("Enter your email: ");
      emailInput = stdin.readLineSync()!;
      //This while loop prevents the email to be inputed so that the user won't leave it blank
      while (emailInput.isEmpty) {
      print('Field cannot be empty');
      stdout.write("Please input your Email: ");
      emailInput = stdin.readLineSync()!;
      }

      stdout.write("Enter your temporary password: ");
      passwordInput = stdin.readLineSync()!;
      //This while loop prevents the password to be inputed so that the user won't leave it blank
      while (passwordInput.isEmpty) {
      print('Field cannot be empty');
      stdout.write("Please input temporary password: ");
      passwordInput = stdin.readLineSync()!;
      }
      sep.display();
      load.display();
      sep.display();

    //This condition checks if the email and password is match to the one of the user inputed and generated by the password generator.
      if (emailInput == personinfo.email && passwordInput == tempopass) {
        print("Login successful ");
        break;
      } 
      else {
        print(" Invalid email or password. Please try again. ");
      }
    }

    // This part is where the code let's the user to change their password
    sep.display();
    print("Please change your password.");
    stdout.write("Enter your new password: ");
    newpass = stdin.readLineSync()!;
    //This while loop prevents the new password to be inputed so that the user won't leave it blank
    while (newpass.isEmpty) {
      print('Field cannot be empty');
      stdout.write("Please input new password: ");
      newpass = stdin.readLineSync()!;
      }
    //This is the final part of the code where the code displays all of the inputed value, stud/emp id, name, email, and password.
    print("Password changed successfully.");
    print("Your new password is: $newpass");
    sep.display();
    personinfo.display();
    print("Password: $newpass");
    sep.display();
    print("Thank you for registering.");
  }
}

