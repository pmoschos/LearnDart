void greet({String name = 'Guest', int age = 0}) {
  print('Hello $name, you are $age years old.');
}

void main() {
  greet(); // Output: Hello Guest, you are 0 years old.
  greet(name: 'Alice', age: 30); // Output: Hello Alice, you are 30 years old.
}
