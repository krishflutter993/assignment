import 'dart:io';

void main()
{
  print("Loading Please wait.");

  Future.delayed(Duration(seconds: 5), ()
  {
    print("Operation completed successfully");
  });
}