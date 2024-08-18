void main() {
  List<int> numbers = [1, 2, 3, 4, 5]; // Growable list

  print(numbers[0]); // Access first element, Output: 1
  print(numbers.length); // Output: 5

  numbers.add(6); // Adding element to the list
  print(numbers); // Output: [1, 2, 3, 4, 5, 6]
}
