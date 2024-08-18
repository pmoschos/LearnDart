import 'dart:io';

void main() {
  String? input;

  do {
    print('Enter a number (or type "exit" to quit): ');
    input = stdin.readLineSync();

    if (input != null && input != 'exit') {
      int? number = int.tryParse(input);

      if (number != null) {
        print('You entered: $number');
      } else {
        print('Invalid number.');
      }
    }
  } while (input != 'exit');

  print('Goodbye!');
}
