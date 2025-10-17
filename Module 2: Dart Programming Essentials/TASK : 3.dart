import 'dart:io';

void main ()
{

  print("Enter a number: ");
  var num = int.parse(stdin.readLineSync().toString());

  if (num % 2 == 0)
  {
    print("Number is even : $num");
  }
  else
  {
    print("Number is odd : $num");
  }
}

