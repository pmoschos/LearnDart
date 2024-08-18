import 'dart:io';

void main() async {
  final file = File('example.txt');

  // Read the content of the file
  String content = await file.readAsString();

  print('File content: $content');
}
