void main() {
  var fixedList = List<int>.filled(3, 0); // Fixed size of 3
  print(fixedList); // Output: [0, 0, 0]

  // Update an element
  fixedList[1] = 9;
  print(fixedList); // Output: [0, 9, 0]
}
