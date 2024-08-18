void main() {
  Set<double> prices = {19.99, 24.50, 30.00};
  prices.addAll([40.99, 50.75]);
  print("After adding: $prices"); // Output: {19.99, 24.50, 30.00, 40.99, 50.75}
}
