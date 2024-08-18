
<p align="center">
  <img src="https://img.shields.io/badge/Dart-%230175C2.svg?logo=dart&logoColor=white" alt="Dart Badge" width="200"/>
</p>

# ⚙️ Functions in Dart

Functions in Dart are reusable blocks of code that perform a specific task. They allow you to organize your code into smaller, more manageable pieces. Dart offers various types of functions and ways to pass data into them. In this guide, we'll explore all the major concepts related to functions in Dart.

## 📑 Table of Contents

1. [🔧 What is a Function in Dart?](#-1-what-is-a-function-in-dart)
2. [🔍 Types of Functions in Dart](#-2-types-of-functions-in-dart)
3. [📦 Function Parameters in Dart](#-3-function-parameters-in-dart)
4. [🌀 Anonymous Functions in Dart](#-4-anonymous-functions-in-dart)
5. [➡️ Arrow Functions in Dart](#arrow-functions-in-dart)
6. [🔒 Scope in Dart](#-6-scope-in-dart)

---

## 🔧 1. What is a Function in Dart?

A **function** in Dart is a block of code that performs a specific task. Functions can be called multiple times, making your code more modular and reusable. Dart functions can return values or perform an action without returning anything.

### Syntax:
```dart
returnType functionName(parameters) {
  // Function body
  return value;  // (optional)
}
```

### Example:
```dart
void main() {
  printGreeting();  // Function call
}

void printGreeting() {
  print('Hello, Dart!');
}
```

### Explanation:
- **`printGreeting`** is the function that prints a message to the console.
- **`void`** indicates that the function does not return any value.

## 🔍 2. Types of Functions in Dart

Dart supports several types of functions that offer different ways of organizing code. The main types include:

### 2.1 **Standard Functions:**
These are regular functions that return a value or perform an operation.

### Example:
```dart
int add(int a, int b) {
  return a + b;
}

void main() {
  print(add(3, 4));  // Output: 7
}
```

### 2.2 **Void Functions:**
Functions that do not return any value. They are used when you only need to perform some action.

### Example:
```dart
void sayHello() {
  print('Hello, World!');
}

void main() {
  sayHello();  // Output: Hello, World!
}
```

### 2.3 **Returning Functions:**
Functions that return a value to the caller.

### Example:
```dart
String greet(String name) {
  return 'Hello, $name!';
}

void main() {
  print(greet('Alice'));  // Output: Hello, Alice!
}
```

## 📦 3. Function Parameters in Dart

Functions can accept parameters (also known as arguments) that allow you to pass data into them.

### 3.1 **Positional Parameters:**
These parameters are passed in a specific order.

### Example:
```dart
void greet(String name, int age) {
  print('Hello $name, you are $age years old.');
}

void main() {
  greet('Bob', 25);  // Output: Hello Bob, you are 25 years old.
}
```

### 3.2 **Named Parameters:**
Named parameters are optional and are passed by specifying the parameter name.

### Example:
```dart
void greet({String? name, int? age}) {
  print('Hello $name, you are $age years old.');
}

void main() {
  greet(name: 'Bob', age: 25);  // Output: Hello Bob, you are 25 years old.
}
```

### 3.3 **Default Parameters:**
You can specify default values for parameters.

### Example:
```dart
void greet({String name = 'Guest', int age = 0}) {
  print('Hello $name, you are $age years old.');
}

void main() {
  greet();  // Output: Hello Guest, you are 0 years old.
  greet(name: 'Alice', age: 30);  // Output: Hello Alice, you are 30 years old.
}
```

## 🌀 4. Anonymous Functions in Dart

Anonymous functions, also known as lambda functions or inline functions, are functions that have no name. They are often used as arguments to higher-order functions or as callbacks.

### Example:
```dart
void main() {
  List<String> names = ['Alice', 'Bob', 'Charlie'];

  names.forEach((name) {
    print('Hello, $name!');
  });
}
```

### Explanation:
- The function inside `forEach` is an anonymous function. It doesn’t have a name, but it takes a parameter `name` and prints a message for each element in the list.

### Use Cases:
- Anonymous functions are useful for short-lived operations where you don't need to reuse the function outside of a specific context.

## ➡️ 5. Arrow Functions in Dart

An **arrow function** is a shorthand syntax for writing small functions. Arrow functions are ideal for cases where the function body contains a single expression. They are also known as **fat arrow** functions because of the syntax `=>`.

### Syntax:
```dart
returnType functionName(parameters) => expression;
```

### Example:
```dart
int square(int number) => number * number;

void main() {
  print(square(4));  // Output: 16
}
```

### Explanation:
- The `=>` symbol indicates an arrow function, and it’s followed by a single expression which becomes the return value.

### Use Cases:
- Arrow functions simplify the syntax when you have a small function with a single expression.

## 🔒 6. Scope in Dart

Scope refers to the visibility and accessibility of variables and functions within different parts of a program. Dart has two primary types of scope:

### 6.1 **Global Scope:**
Variables defined outside of any function or class are accessible throughout the entire program.

### Example:
```dart
int globalVar = 10;

void printGlobal() {
  print(globalVar);  // Accessible here
}

void main() {
  printGlobal();  // Output: 10
}
```

### 6.2 **Local Scope:**
Variables defined inside a function or block are only accessible within that specific function or block.

### Example:
```dart
void main() {
  int localVar = 20;
  
  void printLocal() {
    print(localVar);  // Accessible here
  }
  
  printLocal();  // Output: 20
  
  // print(globalVar);  // Error: Not accessible here
}
```

### Explanation:
- **Global scope** variables can be accessed from anywhere in the program.
- **Local scope** variables can only be accessed within the function or block where they are declared.

---

## 🎯 Summary

Dart functions offer flexibility and power, allowing you to build modular, reusable, and maintainable code. In this guide, we explored:
- **🔧 Basic Functions**: Functions with return values and void functions.
- **📦 Function Parameters**: Positional, named, and default parameters.
- **🌀 Anonymous Functions**: Inline functions without a name.
- **➡️ Arrow Functions**: A shorthand for single-expression functions.
- **🔒 Scope**: Understanding local and global scope in Dart.

Mastering these concepts will enhance your ability to write effective and concise Dart code.

---

## 📢 Stay Updated
Be sure to ⭐ this repository to stay updated with new Dart programming guides and examples!

## 📄 License
🔐 This project is protected under the [MIT License](https://mit-license.org/).

## 📧 Contact
Panagiotis Moschos - pan.moschos86@gmail.com

---

<h1 align=center>Happy Coding 👨‍💻</h1>

<p align="center">
  Made with ❤️ by Panagiotis Moschos (https://github.com/pmoschos)
</p>
