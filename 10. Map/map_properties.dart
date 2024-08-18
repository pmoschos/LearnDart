void main() {
  Map<String, String> countryCodes = {
    "US": "United States",
    "DE": "Germany",
    "IN": "India"
  };

  print("Is Empty? ${countryCodes.isEmpty}"); // Output: false
  print("Length: ${countryCodes.length}"); // Output: 3
  print("Keys: ${countryCodes.keys.toList()}"); // Output: [US, DE, IN]
  print(
      "Values: ${countryCodes.values.toList()}"); // Output: [United States, Germany, India]
}
