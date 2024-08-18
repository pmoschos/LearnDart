import 'dart:io';

void main() async {
  final file = File('example.txt');

  // Append new content to the file
  await file.writeAsString('This line was added later.', mode: FileMode.append);

  print('File updated successfully.');
}
