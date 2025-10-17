import 'dart:io';
void main()
{
  print("Enter any number");
  var n = int.parse(stdin.readLineSync().toString());

  try
  {
    int num = n ~/ 0;
    print(num);
  }

  catch(e)
  {
    print("division by zero errors: $e");
  }

  finally
  {
    print("Executed");
  }

}