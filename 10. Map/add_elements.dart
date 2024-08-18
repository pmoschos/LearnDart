void main() {
  Map<String, String> employees = {
    "E001": "Alice",
    "E002": "Bob",
  };

  // Adding a new key-value pair
  employees["E003"] = "Charlie";
  print(employees); // Output: {E001: Alice, E002: Bob, E003: Charlie}
}
