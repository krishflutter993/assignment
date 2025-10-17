import 'dart:io';

void main() {
  print("Enter number of elements: ");
  int n = int.parse(stdin.readLineSync().toString());

  List<int> arr = [];

  print("Enter integers: $n");
  for (int i = 0; i < n; i++)
  {
    int value = int.parse(stdin.readLineSync().toString());
    arr.add(value);
  }

  // Ascending sort
  for (int i = 0; i < n; i++)
  {
    for (int j = i + 1; j < n; j++)
    {
      if (arr[i] > arr[j])
      {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }

  print("Ascending order: ");
  for (int i = 0; i < n; i++)
  {
    stdout.write("${arr[i]} ");
  }
  print("");



  // Descending sort
  for (int i = 0; i < n; i++)
  {
    for (int j = i + 1; j < n; j++)
    {
      if (arr[i] < arr[j]) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }

  print("Descending order: ");
  for (int i = 0; i < n; i++) {
    print("${arr[i]} ");
  }
  print("");
}