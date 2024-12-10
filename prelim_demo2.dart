import 'dart:io';

main() {
  List <Map> studList = [];
  Map entry = {"name": String, "studNum": int};
  String sn;
  int num;
  print(" Add Students in your List");

  var e;
  do{
    stdout.write("Input student name (type exit to terminate): ");
    sn = stdin.readLineSync()!;
    if (sn.toLowerCase()=='exit')
    break;
    stdout.write("input student number: ");
    num = int.parse(stdin.readLineSync()!);
     if (num == 0)
    break;
    entry["name"]=sn;
    entry["studNum"] = num;
    studList.add({entry['name']:entry['studNum']});
  } while(sn.toLowerCase()!='exit');
  print("Update List:");
  studList.forEach(print);
  

}