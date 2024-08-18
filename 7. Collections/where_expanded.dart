void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6];

  // Filtering and transforming the numbers
  Iterable<int> evenSquares = numbers
      .where((number) => number % 2 == 0)
      .map((number) => number * number);

  print(evenSquares.toList()); // Output: [4, 16, 36]
}
