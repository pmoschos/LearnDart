void main() {
  Map<String, int> phoneBook = {'Alice': 12345, 'Bob': 67890, 'Charlie': 54321};

  print(phoneBook['Alice']); // Output: 12345

  phoneBook['David'] = 11111; // Add a new key-value pair
  print(
      phoneBook); // Output: {Alice: 12345, Bob: 67890, Charlie: 54321, David: 11111}
}
