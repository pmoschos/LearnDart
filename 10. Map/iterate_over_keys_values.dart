void main() {
  Map<String, double> itemWeights = {"Book": 1.2, "Laptop": 2.5, "Phone": 0.3};

  // Iterating over keys
  for (String item in itemWeights.keys) {
    print("Item: $item");
  }

  // Iterating over values
  for (double weight in itemWeights.values) {
    print("Weight: $weight");
  }
}
