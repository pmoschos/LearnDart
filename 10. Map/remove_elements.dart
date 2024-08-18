void main() {
  Map<String, int> scores = {"Alice": 95, "Bob": 85, "Charlie": 78};

  // Removing an element by key
  scores.remove("Bob");
  print(scores); // Output: {Alice: 95, Charlie: 78}
}
