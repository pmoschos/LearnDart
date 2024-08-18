import 'dart:io';

void main() async {
  final file = File('example.txt');

  // Write some content to the file
  await file.writeAsString('Hello, Dart! This is a CRUD operation example.');

  print('File written successfully.');
}
