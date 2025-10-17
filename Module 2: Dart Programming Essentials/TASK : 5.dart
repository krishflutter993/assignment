import 'dart:io';

void main ()
{
  print("Enter a number: ");
  var num = int.parse(stdin.readLineSync().toString());

  if(num % 3 == 0)
  {
    print("num is Fizz : $num");
  }

  if(num % 5 == 0)
  {
    print("num is Buzz : $num");
  }

  if (num % 3 == 0 && num % 5 == 0)
  {
    print("num is FizzBuzz : $num");
  }
  else
  {
    print("num is NOT  FizzBuzz : $num");
  }
}