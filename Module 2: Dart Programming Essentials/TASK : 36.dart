import 'dart:io';

void main() {
  final targetPath = 'bin/practical/hello.txt';
  try {
    final file = File(targetPath);

    file.parent.createSync(recursive: true);

    final contentToWrite = 'Hello, I am Jiya Hargun.';
    file.writeAsStringSync(contentToWrite);
    print('Data written to file: $targetPath');
  } catch (e) {
    print('Error writing to file: $e');
  }

  try {
    final file = File(targetPath);
    final fileContents = file.readAsStringSync();
    print('Data read from the file:');
    print(fileContents);
  } catch (e) {
    print('Error reading from file: $e');
  }
}
