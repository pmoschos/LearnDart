void main() {
  Set<int> uniqueNumbers = {1, 2, 3, 4, 5};

  uniqueNumbers.add(3); // Attempt to add duplicate element
  print(uniqueNumbers); // Output: {1, 2, 3, 4, 5} (No duplicates)

  uniqueNumbers.add(6); // Add a new unique element
  print(uniqueNumbers); // Output: {1, 2, 3, 4, 5, 6}
}
