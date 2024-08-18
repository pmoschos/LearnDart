class CustomException implements Exception {
  String cause;
  CustomException(this.cause);
}

void main() {
  try {
    throw CustomException('Something went wrong!');
  } catch (e) {
    print('Caught custom exception: $e');
  }
}
