import 'dart:io';

// Ek stream function jo 1 se lekar limit tak numbers dega
Stream<int> generateNumbers(int limit) {
  List<int> dataList = [];

  for (int i = 1; i <= limit; i++) {
    dataList.add(i);
  }

  return Stream.fromIterable(dataList);
}

void main() async {
  print("Number sequence started:\n");

  await for (int value in generateNumbers(10)) {
    print("Value: $value");
    await Future.delayed(Duration(seconds: 1));
  }

  print("\nAll numbers printed. Job done!");
}
