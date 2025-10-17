import 'package:path/path.dart' as path;

void main() {
  final pathToFile = r'D:\dart_sdk\bin\practical\hello.txt';

  final directory = path.dirname(pathToFile);
  final fileName = path.basename(pathToFile);
  final fileExtension = path.extension(pathToFile);

  print('Path: $pathToFile');
  print('Directory: $directory');
  print('File name: $fileName');
  print('Extension: $fileExtension');
}
