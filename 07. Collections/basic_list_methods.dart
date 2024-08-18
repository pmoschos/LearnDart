void main() {
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];

  fruits.add('Orange');
  print(fruits); // Output: [Apple, Banana, Cherry, Orange]

  fruits.remove('Banana');
  print(fruits); // Output: [Apple, Cherry, Orange]

  print(fruits.indexOf('Cherry')); // Output: 1
}
