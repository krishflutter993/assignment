void main()
{
  List<int> numbersA = [1, 2, 3];
  List<int> numbersB = [2, 4, 9];
  List<int> numbersC = [1, 3, 7];

  List<int> allNumbers = [];
  allNumbers.addAll(numbersA);
  allNumbers.addAll(numbersB);
  allNumbers.addAll(numbersC);

  print("Combined List: $allNumbers");
  allNumbers = allNumbers.toSet().toList(); // Remove duplicates
  allNumbers.sort();
  print("Sorted List: $allNumbers");
}
