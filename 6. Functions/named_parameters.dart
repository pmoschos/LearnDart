void greet({String? name, int? age}) {
  print('Hello $name, you are $age years old.');
}

void main() {
  greet(name: 'Bob', age: 25); // Output: Hello Bob, you are 25 years old.
}
