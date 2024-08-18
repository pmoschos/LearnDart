import 'dart:io';

void main() {
  print('Enter your age: ');
  String? input = stdin.readLineSync();

  if (input != null) {
    int? age = int.tryParse(input); // Convert input to an integer

    if (age != null) {
      print('Your age is $age.');
    } else {
      print('Invalid input. Please enter a valid number.');
    }
  }
}
