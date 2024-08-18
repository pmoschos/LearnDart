void main() {
  List<int> numbers = [7, 14, 21, 28, 35];
  var divisibleBySeven = numbers.where((n) => n % 7 == 0).toList();

  print(divisibleBySeven); // Output: [7, 14, 21, 28, 35]
}
