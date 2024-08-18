void main() {
  Set<String> sports1 = {"Soccer", "Basketball", "Cricket"};
  Set<String> sports2 = {"Cricket", "Rugby", "Hockey"};

  final commonSports = sports1.intersection(sports2);
  print(commonSports); // Output: {Cricket}
}
