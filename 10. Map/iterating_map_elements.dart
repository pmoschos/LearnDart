void main() {
  Map<String, double> grades = {"Math": 88.5, "Science": 92.3, "History": 79.6};

  grades.forEach((subject, grade) {
    print("$subject: $grade");
  });
  // Output:
  // Math: 88.5
  // Science: 92.3
  // History: 79.6
}
