void main() {
  List<int> numbers = [2, 4, 6, 8, 10, 11, 12, 13];
  List<int> evenNumbers = numbers.where((number) => number.isEven).toList();

  print(evenNumbers); // Output: [2, 4, 6, 8, 10, 12]
}
