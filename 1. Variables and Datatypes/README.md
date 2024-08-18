![Dart Logo](https://dart.dev/assets/img/logo/logo-white-text.svg)
# Variables and DataTypes in Dart !

Dart is an optimized programming language for building mobile, desktop, server, and web applications. It is known for its strong type system and its ease of use. In this guide, we'll explore **variables** and **data types** in Dart—how to declare, initialize, and use them effectively.

## Key Features of Variables in Dart

### 1. 🔢 **Strongly Typed and Dynamic Variables**
Dart is strongly typed, meaning every variable has a specific type that must be respected. However, it also has the `var` keyword, which allows for type inference, making the syntax cleaner and easier to write.

#### Common Variable Types in Dart

- **String:** Represents textual data.
- **int:** Represents integer numbers.
- **double:** Represents floating-point numbers.
- **num:** A parent type for both `int` and `double`.
- **bool:** Represents Boolean values (`true` or `false`).
- **var:** Type is inferred from the assigned value.

```dart
String name = 'Dart';    // Explicit type declaration
int age = 30;            // Integer type
double pi = 3.14;        // Floating point
num temperature = 23.5;  // Can hold both int and double
bool isValid = true;     // Boolean type
var language = 'Dart';   // Inferred as String
```

### 2. 🛡️ **Final and Const Variables**
Dart supports two types of immutable variables: `final` and `const`. Once assigned a value, they cannot be changed.

- `final`: The value is assigned only once and can be set at runtime.
- `const`: The value is compile-time constant.

```dart
final currentYear = DateTime.now().year;  // Can be set at runtime
const maxRetries = 5;  // Must be set at compile-time
```

### 3. ⚡ **Type Safety and Type Inference**
Dart ensures type safety, preventing variables from holding values of incompatible types. If the variable type is declared, you must adhere to it throughout its lifecycle.

```dart
int age = 25;
age = 'twenty-five';  // ❌ Error: A string cannot be assigned to an int
```

However, when using `var`, the type is inferred from the initial assignment:

```dart
var score = 100;  // Inferred as int
score = 101;      // Valid reassignment
```

### 4. 🔐 **Late Variables**
You can use the `late` keyword for deferred initialization of variables. This is useful when you know the variable will be initialized later, but before it's used.

```dart
late String description;
description = "A Dart Guide";  // Initialized later
```

## Dart Data Types

### 📊 **Numbers**
Dart supports two types of numbers:
- `int`: Represents whole numbers (e.g., `5`, `-10`).
- `double`: Represents decimal numbers (e.g., `3.14`, `-1.5`).

```dart
int apples = 10;
double price = 12.99;
num distance = 1234;  // Can be either int or double
```

### 🔠 **Strings**
Strings represent sequences of characters. You can use either single or double quotes to define them. Dart also supports string interpolation.

```dart
String message = "Hello, Dart!";
String interpolated = "Welcome to $message";  // String interpolation
```

### 1️⃣ **Booleans**
The `bool` type represents Boolean values `true` or `false`.

```dart
bool isLoggedIn = true;
```

### 🗃️ **Lists**
Lists are ordered collections of items. In Dart, lists are indexed starting from 0.

```dart
List<int> numbers = [1, 2, 3, 4];
var fruits = ['apple', 'banana', 'mango'];
```

### 🔑 **Maps**
Maps represent key-value pairs.

```dart
Map<String, int> stock = {
  'apples': 10,
  'oranges': 20,
};
```

### 🛑 **Sets**
Sets are unordered collections of unique values.

```dart
Set<String> uniqueNames = {'Alice', 'Bob', 'Charlie'};
```

### 📜 **Runes**
Runes represent Unicode characters. These are used for processing special characters or symbols.

```dart
var heart = '♥';  // Unicode for heart symbol
```

### 💀 **Null**
The `Null` type represents a variable that has no value.

```dart
String? nullableName;  // Nullable type, can hold null
nullableName = null;  // Assigning null is valid
```

## Comments in Dart

### 📝 **Single-line Comments**
Single-line comments start with `//`.

```dart
// This is a single-line comment
var language = 'Dart';
```

### 📝 **Multi-line Comments**
Multi-line comments are enclosed between `/*` and `*/`.

```dart
/*
 This is a multi-line comment.
 It spans multiple lines.
*/
var language = 'Dart';
```

### 📝 **Documentation Comments**
Documentation comments use `///` and can be parsed by documentation tools.

```dart
/// This function prints a greeting message.
void greet() {
  print('Hello, Dart!');
}
```

## Variable Scope

### 🌍 **Global Variables**
Variables declared outside of functions are global and can be accessed from any part of the code.

```dart
String appName = "Dart App";  // Global variable
```

### 🔐 **Local Variables**
Variables declared inside a function or block are local and can only be accessed within that scope.

```dart
void displayGreeting() {
  String greeting = "Hello, Dart!";  // Local variable
  print(greeting);
}
```

### 📊 **Static Variables**
Static variables belong to the class rather than instances of the class. They can be accessed without creating an instance.

```dart
class Counter {
  static int count = 0;  // Static variable
}
```

## Example Code: Combining Concepts

```dart
void main() {
  final String appName = "Dart Learning";
  const double version = 1.0;
  
  var user = "Alice";
  int age = 24;
  bool isLoggedIn = true;
  
  late String userStatus;
  userStatus = isLoggedIn ? "Active" : "Inactive";
  
  print("Welcome to $appName version $version.");
  print("User: $user, Age: $age, Status: $userStatus");
}
```

## Summary

- Dart enforces **strong typing**, but also supports **type inference** via `var`.
- **Final** and **const** variables provide immutability.
- **Nullable** variables allow the use of null values.
- **Lists, Maps, Sets, and Runes** are built-in data structures that allow for flexible data handling.
- Comments are available as single-line, multi-line, and documentation comments to enhance code readability and maintainability.

With this knowledge, your students can effectively manage and work with variables and data types in Dart.

---

## 📢 Stay Updated
Be sure to ⭐ this repository to stay updated with new Dart programming guides and examples!

## 📄 License
🔐 This project is protected under the [MIT License](https://mit-license.org/).

## Contact 📧
Panagiotis Moschos - pan.moschos86@gmail.com

---

<h1 align=center>Happy Coding with Dart 👨‍💻</h1>

<p align="center">
  Made with ❤️ by Panagiotis Moschos (https://github.com/pmoschos)
</p>
