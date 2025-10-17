import 'dart:io';
void main()
{
  print("Enter radius of the circle: ");
   var radius = int.parse(stdin.readLineSync().toString());

  var area = 3.14 * radius * radius;
  print("Area of Circle :$area");

  var circumference  = 2 * 3.14 * radius;
  print("Area of Circumference :$circumference");
}
