void main() {
  String firstName = 'Panagiotis';
  String lastName = 'Moschos';

  // Using + operator
  String fullName = firstName + ' ' + lastName;
  print(fullName); // Panagiotis Moschos

  // Using string interpolation
  String fullName2 = '$firstName $lastName';
  print(fullName2); // Panagiotis Moschos
}
