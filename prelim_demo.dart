
//Can use dynamic main(){ values }
import 'dart:io';

main(){
  //This is how you print
  print ('Hello World!'); 
  print("Welcome to Appdev");
  print(22);
  print(2*10);

  //can use the var to print out or to store the value inside the varriable
  //must need in order to run the varriables

  //holds the valuable validation to overlap other varriables(?)
  //var x;
  //holds the value of the variable 
  //can also use var x='Hello Wold!' but cant overlap by other variable
  //x ='Hello World!';
  //print(x);

  //rewrite the value of the varriable x from 'Hello World!' to 15
  //x=15;
  //print(x);


  //sets the value of d into Dart
  //var d = "dart";
  //String w = "World";

  //can print or this is like a plus sign in the python but in this you have to use the ${varriable name} to also print or get the value of the d.
  //print("Hello ${d} ${w}");

  //.toUpperCase will make the value of the d to uppercase everything
  //print("Currently learing ${d.toUpperCase()} in this class!");

  //num n=5;
  //When printing number you dont need {} since you can print out the value of a numerical and if you want to manipulate the print output then you can use the {value1 and value 2}
  //print("Squared value of $n is ${n*n}");

  //archon holds the value of the names inside the array
  //List archon = [1, 2, 3,'Raiden','Nahida','Mavuika',20];
  //print(archon);
  //print(archon[1]);
  //to print the items inside the archon array you need to for loop the varriable archon to print each archon inside the array
  //archon.add('forina');
  //for(var e in archon)
    //print(e);

  //archon.forEach(print);

  //You can the dynamic to rewrite the value of one varriable using the dynamic syntax if you want to change the value from string to int
  //dynamic z = 'Hello World!';
  //print(z);
  //z=15;
  //print(z);

  /*List <Map> student = [
    {'name':'Mark Erolle Quiambao','section': 302},
    {'name':'June Sarah Quiambao','section': 302},
    {'name':'Jose Reyes','section': 302}
  ];

for(var users in student)
 print(users['name']);
*/

String name;
int age;

stdout.write('Please Enter your name: \t');
name = stdin.readLineSync()!;
stdout.write('What is your age?: \t');
age = int.parse(stdin.readLineSync()!);
print("WOW your already $age years old You still have ${60-age} years old, Welcome to adulthood, next level will be senior citizen");
print("Hello ${name.toUpperCase()}, Welcome to Genshin");
}
