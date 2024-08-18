void main() {
  Set<String> colors = {'Red', 'Green', 'Blue'};

  print(colors.contains('Green')); // Output: true

  colors.remove('Blue');
  print(colors); // Output: {Red, Green}
}
