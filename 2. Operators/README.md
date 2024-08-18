<p align="center">
  <img src="https://img.shields.io/badge/Dart-%230175C2.svg?logo=dart&logoColor=white" alt="Dart Badge" width="200"/>
</p>

# Operators in Dart

Dart is a modern, versatile programming language that offers a rich set of operators to handle various tasks such as arithmetic operations, comparisons, and logical evaluations. In this guide, we will explore operators in Dart, ranging from basic to advanced, with examples to help you and your students understand their functionality.

## Types of Operators in Dart

1. **Arithmetic Operators**
2. **Assignment Operators**
3. **Comparison Operators**
4. **Logical Operators**
5. **Bitwise Operators**
6. **Conditional Operators**
7. **Type Test Operators**
8. **Cascade Notation**

Let's dive into each of these categories with explanations and code examples.

## 1. 🔢 Arithmetic Operators

Arithmetic operators are used to perform basic mathematical operations like addition, subtraction, multiplication, division, and modulus.

| Operator | Description     | Example            |
|----------|-----------------|--------------------|
| `+`      | Addition        | `a + b`            |
| `-`      | Subtraction     | `a - b`            |
| `*`      | Multiplication  | `a * b`            |
| `/`      | Division        | `a / b`            |
| `~/`     | Integer Division| `a ~/ b`           |
| `%`      | Modulus (Remainder) | `a % b`        |
| `++`     | Increment       | `a++` (or `++a`)   |
| `--`     | Decrement       | `a--` (or `--a`)   |

### Example:
```dart
void main() {
  int a = 10;
  int b = 3;
  
  print(a + b);   // 13
  print(a - b);   // 7
  print(a * b);   // 30
  print(a / b);   // 3.3333...
  print(a ~/ b);  // 3
  print(a % b);   // 1
}
```

## 2. 💼 Assignment Operators

Assignment operators are used to assign values to variables. Dart also provides compound assignment operators that combine basic arithmetic operations with assignment.

| Operator | Description       | Example          |
|----------|-------------------|------------------|
| `=`      | Assignment        | `a = b`          |
| `+=`     | Add and Assign    | `a += b`         |
| `-=`     | Subtract and Assign | `a -= b`       |
| `*=`     | Multiply and Assign | `a *= b`       |
| `/=`     | Divide and Assign | `a /= b`         |
| `~/=`    | Integer Divide and Assign | `a ~/= b` |
| `%=`     | Modulus and Assign | `a %= b`        |

### Example:
```dart
void main() {
  int a = 5;
  a += 3;  // Equivalent to a = a + 3
  print(a);  // 8
}
```

## 3. ⚖️ Comparison Operators

Comparison operators are used to compare two values. They return a `bool` value (`true` or `false`).

| Operator | Description     | Example            |
|----------|-----------------|--------------------|
| `==`     | Equal to        | `a == b`           |
| `!=`     | Not equal to    | `a != b`           |
| `>`      | Greater than    | `a > b`            |
| `<`      | Less than       | `a < b`            |
| `>=`     | Greater than or equal to | `a >= b` |
| `<=`     | Less than or equal to | `a <= b`     |

### Example:
```dart
void main() {
  int a = 5;
  int b = 3;
  
  print(a == b);  // false
  print(a > b);   // true
}
```

## 4. 🔗 Logical Operators

Logical operators are used to combine two or more conditions and return a `bool` value.

| Operator | Description           | Example          |
|----------|-----------------------|------------------|
| `&&`     | Logical AND           | `a && b`         |
| `||`     | Logical OR            | `a || b`         |
| `!`      | Logical NOT           | `!a`             |

### Example:
```dart
void main() {
  bool a = true;
  bool b = false;
  
  print(a && b);  // false
  print(a || b);  // true
  print(!a);      // false
}
```

## 5. ⚙️ Bitwise Operators

Bitwise operators perform operations on the binary representations of integers.

| Operator | Description          | Example          |
|----------|----------------------|------------------|
| `&`      | Bitwise AND          | `a & b`          |
| `|`      | Bitwise OR           | `a | b`          |
| `^`      | Bitwise XOR          | `a ^ b`          |
| `~`      | Bitwise NOT          | `~a`             |
| `<<`     | Left shift           | `a << b`         |
| `>>`     | Right shift          | `a >> b`         |

### Example:
```dart
void main() {
  int a = 5;  // Binary: 0101
  int b = 3;  // Binary: 0011
  
  print(a & b);  // 1 (Binary: 0001)
  print(a | b);  // 7 (Binary: 0111)
  print(a ^ b);  // 6 (Binary: 0110)
  print(~a);     // -6 (Binary complement of 5)
}
```

## 6. ❓ Conditional (Ternary) Operators

Conditional operators allow for concise if-else logic in a single line.

| Operator   | Description          | Example          |
|------------|----------------------|------------------|
| `?:`       | Ternary Operator     | `condition ? expr1 : expr2` |
| `??`       | If null Operator     | `expr1 ?? expr2`  |

### Example:
```dart
void main() {
  int a = 5;
  int b = 3;
  
  var result = (a > b) ? 'a is greater' : 'b is greater';
  print(result);  // 'a is greater'

  String? name;
  print(name ?? 'Guest');  // 'Guest'
}
```

## 7. 🧪 Type Test Operators

Type test operators are used to check the type of a variable at runtime.

| Operator | Description             | Example            |
|----------|-------------------------|--------------------|
| `is`     | Checks type             | `a is String`      |
| `is!`    | Checks if not of type   | `a is! String`     |

### Example:
```dart
void main() {
  var x = 'hello';
  print(x is String);   // true
  print(x is! int);     // true
}
```

## 8. 🔄 Cascade Notation (`..`)

Cascade notation allows you to perform multiple operations on the same object without needing to repeat the object’s name.

### Example:
```dart
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
  
  print('${person.name}, ${person.age}');  // Alice, 30
}
```

## Summary

Dart offers a rich set of operators that are essential for performing calculations, logical operations, and managing objects. From basic arithmetic and comparison operators to more advanced features like type test and cascade notation, Dart's operators provide you with the tools you need to build powerful and concise code.

- **Arithmetic Operators** help with mathematical operations.
- **Assignment Operators** allow for concise variable assignments.
- **Comparison and Logical Operators** are essential for decision-making.
- **Bitwise Operators** offer advanced manipulations on binary data.
- **Conditional and Type Test Operators** allow for more compact logic and type safety.
- **Cascade Notation** simplifies chaining operations on the same object.

Understanding and mastering these operators will help your students write more efficient and readable Dart code.

---

## 📢 Stay Updated
Be sure to ⭐ this repository to stay updated with new Dart programming guides and examples!

## 📄 License
🔐 This project is protected under the [MIT License](https://mit-license.org/).

## Contact 📧
Panagiotis Moschos - pan.moschos86@gmail.com

---

<h1 align=center>Happy Coding 👨‍💻</h1>

<p align="center">
  Made with ❤️ by Panagiotis Moschos (https://github.com/pmoschos)
</p>
