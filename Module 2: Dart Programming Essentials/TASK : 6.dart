import 'dart:io';
void main()
{
  print("Enter Marks 0 to 100 ");
  var marks = int.parse(stdin.readLineSync().toString());

  if(marks>=90 && marks>=100)
  {
    print("A GRADE");
  }

  else if(marks>=80 && marks>=89)
  {
    print("B GRADE");
  }

  else if(marks>=70 && marks>=79)
  {
    print("C GRADE");
  }

  else if(marks>= 60 && marks>=69)
  {
    print("D GRADE");
  }

  else
  {
    print("FALL");
  }

}