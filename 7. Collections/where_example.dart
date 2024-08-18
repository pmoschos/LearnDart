void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6];

  // Using where to filter numbers greater than 3
  Iterable<int> filteredNumbers = numbers.where((number) => number > 3);
  print(filteredNumbers.toList()); // Output: [4, 5, 6]
}
