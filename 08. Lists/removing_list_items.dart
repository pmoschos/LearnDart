void main() {
  var scores = [100, 95, 80, 75];

  scores.remove(95);
  print(scores); // Output: [100, 80, 75]

  scores.removeAt(1);
  print(scores); // Output: [100, 75]
}
