find(var num)
{
  var smallest = 0;
  var largest = 0;

  for (var number in num)
  {
      print("NUMBER IS : $number" );

    if (number < smallest)
    {
      smallest = number;
    }

    if (number > largest)
    {
      largest = number;
    }

  }
  print(" smallest number is $smallest" );
  print("largest number is $largest" );

}

void main()
{
  var  myList = [4, 9, -2, 15, 0];

    find(myList);
}
