import 'dart:io';

void main() {
  int question = 0;
  print("Welcome to Multiplier Code:");
  while (question >= 0) {
    stdout.write("Input multiplier [enter [0] to exit]=>");
    int userInput = int.parse(stdin.readLineSync()!);
    if (userInput == 0) {
      break;
    }
    for (int x = 0; x < 10; x++) {
      int allresult = userInput * (x + 1);
      print('$userInput x ${x + 1} = $allresult');
    }
  }
  print(
      "Coded by: Mark Erolle D. Quiambao | Section: WD - 302 | Class Code: 2198-6ADET");
}
