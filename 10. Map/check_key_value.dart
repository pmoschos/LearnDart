void main() {
  Map<String, String> superheroes = {
    "Clark": "Superman",
    "Bruce": "Batman",
    "Diana": "Wonder Woman"
  };

  print(superheroes.containsKey("Bruce")); // Output: true
  print(superheroes.containsValue("Aquaman")); // Output: false
}
