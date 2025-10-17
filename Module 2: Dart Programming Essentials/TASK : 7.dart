import 'dart:io';

void main ()
{
  print("Enter a number: ");
  var num = int.parse(stdin.readLineSync().toString());

  var count =0;

  for (int i = 1; i <= num; i++)
  {
       if (num % i == 0)
       {
           count = count + 1;
       }
  }

  if (count == 2)
  {
    print("$num is prime number");
  }
  else
  {
     print("$num is not a prime number");
  }

}