void main() {
  int a = 5;
  int b = 3;

  var result = (a > b) ? 'a is greater' : 'b is greater';
  print(result); // 'a is greater'

  String? name;
  print(name ?? 'Guest'); // 'Guest'
}
