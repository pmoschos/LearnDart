void main() {
  var list = [10, 20, 30, 40, 50];

  list.remove(30);
  print(list); // Output: [10, 20, 40, 50]

  list.removeAt(1);
  print(list); // Output: [10, 40, 50]
}
