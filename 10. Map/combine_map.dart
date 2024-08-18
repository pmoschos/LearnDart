void main() {
  Map<String, int> map1 = {"A": 1, "B": 2};
  Map<String, int> map2 = {"C": 3, "D": 4};

  var combinedMap = {...map1, ...map2};
  print(combinedMap); // Output: {A: 1, B: 2, C: 3, D: 4}
}
