void main() {
  String padded = '  Hello, Dart!  ';

  print(padded.trim()); // 'Hello, Dart!'
  print(padded.trimLeft()); // 'Hello, Dart!  '
  print(padded.trimRight()); // '  Hello, Dart!'
}
