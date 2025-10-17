import 'dart:io';

void main() {
  print('1: Celsius to Fahrenheit');
  print('2: Fahrenheit to Celsius');
  String? choice = stdin.readLineSync();

  if (choice == '1')
  {
    print('Enter temperature in Celsius:');
    double c = double.parse(stdin.readLineSync()!);
    print('Fahrenheit: ${(c * 9 / 5 + 32).toStringAsFixed(2)}');
  }

  else if (choice == '2')
  {
    print('Enter temperature in Fahrenheit:');
    double f = double.parse(stdin.readLineSync()!);
    print('Celsius: ${((f - 32) * 5 / 9).toStringAsFixed(2)}');
  }

  else
  {
    print('Invalid choice');
  }
}
