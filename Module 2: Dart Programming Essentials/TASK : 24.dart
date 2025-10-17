import 'dart:io';

void main() {
  print('Enter numbers separated by spaces:');
  String? input = stdin.readLineSync();

  List<int> numbers = [];
  if (input != null) {
    for (var item in input.split(' ')) {
      try {
        numbers.add(int.parse(item));
      } catch (e) {
        print('"$item" is not an integer.');
      }
    }
  }
  print(numbers);
}
