import 'dart:io';
import 'strings.dart';

void main() {
  print(hello);
  print("Waiting for your command ^_^\n");
  var mainInput = stdin.readLineSync();
  while (true) {
    if (mainInput == "q") {
      print(goodbye);
      break;
    } else if (mainInput == "h") {
      print(menu);
      String? command = stdin.readLineSync().toString().toLowerCase();
      // ignore: prefer_typing_uninitialized_variables
      var num1;
      // ignore: prefer_typing_uninitialized_variables
      var num2;
      if (command == "q") {
        print(goodbye);
        break;
      } else {
        if (command == "plus") {
          try {
            print(expect);
            num1 = stdin.readLineSync();
            num2 = stdin.readLineSync();
            print("Result is  ${int.parse(num1) + int.parse(num2)}\n");
            print(menuMessage);
            continue;
          } on Exception {
            print(invalid);
            print(menuMessage);
            continue;
          }
        }
        if (command == "minus") {
          try {
            print(expect);
            num1 = stdin.readLineSync();
            num2 = stdin.readLineSync();
            print("Result is  ${int.parse(num1) - int.parse(num2)}\n");
            print("Returning menu");
            continue;
          } on Exception {
            print(invalid);
            print(menuMessage);
            continue;
          }
        }
        if (command == "multiply") {
          try {
            print(expect);
            num1 = stdin.readLineSync();
            num2 = stdin.readLineSync();
            print("Result is  ${int.parse(num1) * int.parse(num2)}\n");
            print(menuMessage);
            continue;
          } on Exception {
            print(invalid);
            print(menuMessage);
            continue;
          }
        }
        if (command == "mod") {
          try {
            print(expect);
            num1 = stdin.readLineSync();
            num2 = stdin.readLineSync();
            print("Result is  ${int.parse(num1) % int.parse(num2)}\n");
            print(menuMessage);
            continue;
          } on Exception {
            print(invalid);
            print(menuMessage);
            continue;
          }
        }
        if (command == "divide") {
          try {
            print(expect);
            num1 = stdin.readLineSync();
            num2 = stdin.readLineSync();
            print("Result is  ${int.parse(num1) / int.parse(num2)}\n");
            print(menuMessage);
            continue;
          } on Exception {
            print(invalid);
            print(menuMessage);
            continue;
          }
        }
      }
    }
  }
}
