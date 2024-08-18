void main() {
  List<String> list1 = ["Raj", "John"];
  List<String> list2 = ["Mike", "Mark"];

  List<String> combinedList = [...list1, ...list2];
  print(combinedList); // Output: [Raj, John, Mike, Mark]
}
