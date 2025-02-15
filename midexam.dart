class Character {
  String role = "Tank";
  String heroname = "";
  int hp = 2000;
  String ult = "";
  int cd = 70;
}

class Character1 extends Character {
  String role = "Fighter/Tank";
  String heroname = "Chou";
  int hp = 1300;
  String ult = "The way of the Dragon";
  int cd = 30;

  display() {
    print("${role}");
    print("${heroname}");
    print("${hp}");
    print("${ult}");
    print("${cd}");
  }
}

class Character2 extends Character {
  String role = "Tank/Support";
  String heroname = "Atlas";
  int hp = 1510;
  String ult = "Fatal Links";
  int cd = 60;

  display() {
    print("${role}");
    print("${heroname}");
    print("${hp}");
    print("${ult}");
    print("${cd}");
  }
}

main() {
  Character mainrole = new Character();
  Character mlhero = new Character1();
  Character mlhero2 = new Character2();
  print('Welcome To Mobile Legends');
  print('');
  print("========================================");
  print('');
  print("Role: ${mainrole.role}");
  print("Maximum HP: ${mlhero.hp}");
  print("Maximum ULT Cooldown: ${mlhero.cd}");
  print('');
  print("========================================");
  print('');
  print("Role: ${mlhero.role}");
  print("Hero Name: ${mlhero.heroname}");
  print("Role: ${mlhero.hp}");
  print("ULT Name: ${mlhero.ult}");
  print("ULT Cooldown: ${mlhero.cd}");
  print('');
  print("========================================");
  print('');
  print("Role: ${mlhero2.role}");
  print("Hero Name: ${mlhero2.heroname}");
  print("Role: ${mlhero2.hp}");
  print("ULT Name: ${mlhero2.ult}");
  print("ULT Cooldown: ${mlhero2.cd}");
  print('');
  print("========================================");
}
