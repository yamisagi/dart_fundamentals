import 'dart:io';

void main() {
  stdout.write(
      "Hello \\o/\nThis is a simple Calculator and we use specific commands to calculate,\nType 'h' for help\n'q' for quit.\n");
  print("Waiting for your command ^_^\n");
  var mainInput = stdin.readLineSync();
  while (true) {
    if (mainInput == "q") {
      print("Goodbye _o/");
      break;
    } else if (mainInput == "h") {
      print("1. Plus\n2. Minus\n3. Multiply\n4. Divide\n5. Mod\n");
      String? command = stdin.readLineSync().toString().toLowerCase();
      // ignore: prefer_typing_uninitialized_variables
      var num1;
      // ignore: prefer_typing_uninitialized_variables
      var num2;
      if (command == "q") {
        print("Goodbye _o/");
        break;
      } else {
        if (command == "plus") {
          try {
            print("Give me 2 numbers");
            num1 = stdin.readLineSync();
            num2 = stdin.readLineSync();
            print("Result is  ${int.parse(num1) + int.parse(num2)}\n");
            print("Returning menu");
            continue;
          } on Exception {
            print("Invalid command");
            print("Returning menu...");
            continue;
          }
        }
        if (command == "minus") {
          try {
            print("Give me 2 numbers");
            num1 = stdin.readLineSync();
            num2 = stdin.readLineSync();
            print("Result is  ${int.parse(num1) - int.parse(num2)}\n");
            print("Returning menu");
            continue;
          } on Exception {
            print("Invalid command");
            print("Returning menu");
            continue;
          }
        }
        if (command == "multiply") {
          try {
            print("Give me 2 numbers");
            num1 = stdin.readLineSync();
            num2 = stdin.readLineSync();
            print("Result is  ${int.parse(num1) * int.parse(num2)}\n");
            print("Returning menu");
            continue;
          } on Exception {
            print("Invalid command");
            print("Returning menu");
            continue;
          }
        }
        if (command == "mod") {
          try {
            print("Give me 2 numbers");
            num1 = stdin.readLineSync();
            num2 = stdin.readLineSync();
            print("Result is  ${int.parse(num1) % int.parse(num2)}\n");
            print("Returning menu");
            continue;
          } on Exception {
            print("Invalid command");
            print("Returning menu");
            continue;
          }
        }
        if (command == "divide") {
          try {
            print("Give me 2 numbers");
            num1 = stdin.readLineSync();
            num2 = stdin.readLineSync();
            print("Result is  ${int.parse(num1) / int.parse(num2)}\n");
            print("Returning menu");
            continue;
          } on Exception {
            print("Invalid command");
            print("Returning menu");
            continue;
          }
        }
      }
    }
  }
}


//  switch (input2) {
      //   case "plus":
      //     print("Give me 2 numbers\n");
      //     num1 = stdin.readLineSync();
      //     num2 = stdin.readLineSync();
      //     print(int.parse(num1) + int.parse(num2));
      //     break;
      //   case "minus":
      //     print("Give me 2 numbers\n");
      //     num1 = stdin.readLineSync();
      //     num2 = stdin.readLineSync();
      //     print(int.parse(num1) - int.parse(num2));
      //     break;
      //   case "mod":
      //     print("Give me 2 numbers\n");
      //     num1 = stdin.readLineSync();
      //     num2 = stdin.readLineSync();
      //     print(int.parse(num1) % int.parse(num2));
      //     break;
      //   case "multiply":
      //     print("Give me 2 numbers\n");
      //     num1 = stdin.readLineSync();
      //     num2 = stdin.readLineSync();
      //     print(int.parse(num1) * int.parse(num2));
      //     break;
      //   case "divide":
      //     print("Give me 2 numbers\n");
      //     num1 = stdin.readLineSync();
      //     num2 = stdin.readLineSync();
      //     print(int.parse(num1) / int.parse(num2));
      //     break;
      //   default:
      //     print("Correct input pls.");
      //     continue;