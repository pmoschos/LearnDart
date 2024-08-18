import 'dart:io';

void main() {
  print('Enter a number between 1 and 10: ');
  String? input = stdin.readLineSync();

  if (input != null) {
    int? number = int.tryParse(input);

    if (number != null && number > 0 && number <= 10) {
      print('You entered a valid number: $number');
    } else {
      print('Please enter a number between 1 and 10.');
    }
  }
}
