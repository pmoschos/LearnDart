void main() {
  try {
    int result = 10 ~/ 0; // This will throw an exception (division by zero)
    print(result);
  } on IntegerDivisionByZeroException {
    print('Cannot divide by zero.');
  } catch (e) {
    print('Caught an exception: $e');
  } finally {
    print('This code runs regardless of an exception.');
  }
}
