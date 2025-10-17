import 'dart:io';
factorial(var n)
{
  if(n==1 || n==0)
  {
      return 1;
  }
  else
  {
      return n * factorial(n-1);
  }
}

void main()
{
  print("Enter a Number for  factorial ");
  var num = int.parse(stdin.readLineSync().toString());
  
  if(num < 0)
  {
      print("Factorial is not possible for negative numbers.");
  }
  else
  {
     var ans = factorial(num);
    print("Factorial of $num is $ans");
  }
}