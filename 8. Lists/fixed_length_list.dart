void main() {
  var list = List<int>.filled(
      5, 0); // Create a fixed length list of 5 elements initialized to 0
  print(list); // Output: [0, 0, 0, 0, 0]

  // Modifying elements
  list[2] = 5;
  print(list); // Output: [0, 0, 5, 0, 0]
}
