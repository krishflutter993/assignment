import 'dart:io';

void main ()
{
  print("Enter Your Name");
  var name = stdin.readLineSync().toString();

  print("Enter Your Age");
  var age = int.parse(stdin.readLineSync().toString());

  if(name != 0 && age != 0)
  {
      var years = 100 - age;
      print(" Welcome, $name! You have $years years left until you turn 100.");
  }

  else
  {
    print('Invalid input. Please enter a valid name and age.');
  }


}
