void main() {
  var firstSet = ["Anna", "Ben"];
  var secondSet = ["Eve", "Tom"];

  var combined = [...firstSet, ...secondSet];
  print(combined); // Output: [Anna, Ben, Eve, Tom]
}
