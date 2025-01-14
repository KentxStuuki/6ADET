// class Car {  
//    // field 
//    String engine = "E1001";  
   
//    // function 
//    void disp() { 
//       print("Enginm number: $engine"); 
//    } 
// }

// class Car {  
//    // field 
//    String engine = "E1001";  
//    Car(String model){
//     print("$model released");
//    }
   
//    // function 
//    void disp() { 
//       print("Engine number: $engine"); 
//    } 
// }

import 'dart:io';
class Car{
  String color = "";
  String manufactuerer = '';
  int seats = 0;

  Car() {
    print("Non-parameterized constructor");
  }
  Car.sedan(String color, String manufactuerer){
    this.color = color;
    this.manufactuerer = manufactuerer;
    seats =  4;
  }

  Car.pickup(String color, String manufactuerer){
    this.color = color;
    this.manufactuerer = manufactuerer;
    seats =  2;
  }
}

void main(){
  Car c1 = new Car.sedan("Blue", "Nissan");
  Car c2 = new Car.sedan("gray", "Mitsubishi");

stdout.write("Car type [sedan | puckup]?--> ");
String? type = stdin.readLineSync()!.toLowerCase();
if (type == "sedan") print ("This egine has ${c1.seats} seats and is color ${c1.color}: manufactured by ${c1.manufactuerer}");
else if (type == "pickup") print ("This egine has ${c2.seats} seats and is color ${c2.color}: manufactured by ${c2.manufactuerer}");
else
  Car c = new Car();
}