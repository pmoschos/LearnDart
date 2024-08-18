import 'dart:io';

void main() {
  print('Please enter your name: ');
  String? name = stdin.readLineSync(); // Read user input

  print('Hello, $name!'); // Print user input
}
