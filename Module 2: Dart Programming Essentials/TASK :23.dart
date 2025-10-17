import 'dart:io';

void main() {
  print("Calculator");

  double num1;
  while (true) {
    try {
      print("Enter first number: ");
      num1 = double.parse(stdin.readLineSync()!);
      break;
    } catch (e) {
      print("Invalid input! Please enter a valid number.");
    }
  }

  double num2;
  while (true) {
    try {
      print("Enter second number: ");
      num2 = double.parse(stdin.readLineSync()!);
      break;
    } catch (e) {
      print("Invalid input! Please enter a valid number.");
    }
  }

  print("Choose operation");
  print("1. add");
  print("2. subtract");
  print("3. multiply");
  print("4. divide");
  print(" Enter operation: ");
  var choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      print("Result: ${num1 + num2}");
      break;
    case 2:
      print("Result: ${num1 - num2}");
      break;
    case 3:
      print("Result: ${num1 * num2}");
      break;
    case 4:
      if (num2 == 0) {
        print("Error: Division by zero not allowed!");
      } else {
        print("Result: ${num1 / num2}");
      }
      break;
    default:
      print("Invalid operator!");
  }
}
