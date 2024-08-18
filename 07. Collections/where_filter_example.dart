void main() {
  List<String> names = ['Alice', 'Bob', 'Charlie', 'Dave'];

  // Filtering names with more than 3 letters
  Iterable<String> longNames = names.where((name) => name.length > 3);
  print(longNames.toList()); // Output: [Alice, Charlie, Dave]
}
