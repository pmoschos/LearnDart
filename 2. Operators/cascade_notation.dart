class Person {
  String? name;
  int? age;

  void setName(String name) {
    this.name = name;
  }

  void setAge(int age) {
    this.age = age;
  }
}

void main() {
  var person = Person()
    ..setName('Alice')
    ..setAge(30);

  print('${person.name}, ${person.age}'); // Alice, 30
}
