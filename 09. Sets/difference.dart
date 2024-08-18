void main() {
  Set<String> breakfastItems = {"Pancakes", "Waffles", "Coffee"};
  Set<String> lunchItems = {"Coffee", "Sandwich", "Salad"};

  final differenceSet = breakfastItems.difference(lunchItems);
  print(differenceSet); // Output: {Pancakes, Waffles}
}
