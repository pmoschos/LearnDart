void main() {
  Map<String, String> countries = {
    "IN": "India",
    "US": "United States",
  };

  countries.putIfAbsent("UK", () => "United Kingdom");
  print(
      countries); // Output: {IN: India, US: United States, UK: United Kingdom}
}
