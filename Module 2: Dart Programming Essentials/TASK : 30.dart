void main()
{
  List<int> originalList = [2, 4, 6, 8];

  List<int> squaredList = [];
  List<int> cubedList = [];
  List<double> halvedList = [];

  for (int value in originalList) {
    squaredList.add(value * value);
    cubedList.add(value * value * value);
    halvedList.add(value / 2);
  }

  print("Original Numbers: $originalList");
  print("Squared Numbers: $squaredList");
  print("Cubed Numbers: $cubedList");
  print("Halved Numbers: $halvedList");
}
