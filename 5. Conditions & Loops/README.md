
<p align="center">
  <img src="https://img.shields.io/badge/Dart-%230175C2.svg?logo=dart&logoColor=white" alt="Dart Badge" width="200"/>
</p>

# Conditions and Loops in Dart

This guide provides a comprehensive overview of **conditions** and **loops** in Dart. Mastering these concepts is essential for controlling the flow of your program. We'll cover everything from basic conditional statements and loops to advanced control flow tools like switch cases, break and continue statements, ternary operators, and exception handling.

## Table of Contents

01. [Conditions in Dart](#conditions-in-dart)
02. [Loops in Dart](#loops-in-dart)
03. [For Loop in Dart](#for-loop-in-dart)
04. [For Each Loop in Dart](#for-each-loop-in-dart)
05. [While Loop in Dart](#while-loop-in-dart)
06. [Do While Loop in Dart](#do-while-loop-in-dart)
07. [Switch Case in Dart](#switch-case-in-dart)
08. [Break and Continue in Dart](#break-and-continue-in-dart)
09. [Ternary Operator in Dart](#ternary-operator-in-dart)
10. [Exception Handling in Dart](#exception-handling-in-dart)

## 1. Conditions in Dart

Conditions are crucial for decision-making in programs. In Dart, conditions are most commonly expressed using `if`, `else if`, and `else` statements. These blocks of code execute depending on whether a given condition is true or false.

### Syntax of If-Else Condition:
```dart
if (condition) {
  // Executes if condition is true
} else if (anotherCondition) {
  // Executes if the previous condition is false and this one is true
} else {
  // Executes if all previous conditions are false
}
```

### Example:
```dart
void main() {
  int number = 5;

  if (number > 0) {
    print('Number is positive.');
  } else if (number < 0) {
    print('Number is negative.');
  } else {
    print('Number is zero.');
  }
}
```

### Nested If-Else:
You can nest `if-else` statements to handle complex decision-making scenarios.

### Example:
```dart
void main() {
  int number = 10;

  if (number > 0) {
    if (number % 2 == 0) {
      print('Positive even number.');
    } else {
      print('Positive odd number.');
    }
  } else {
    print('Number is zero or negative.');
  }
}
```

### Explanation:
- The `if` block checks the primary condition, and subsequent `else if` blocks check alternate conditions.
- The `else` block executes if none of the preceding conditions are true.

## 2. Loops in Dart

Loops help in executing a block of code repeatedly based on a condition. Dart supports different types of loops, including `for`, `forEach`, `while`, and `do while`.

### Loop Types:
- **For Loop**: Used when the number of iterations is known.
- **For Each Loop**: Best for iterating over collections like lists.
- **While Loop**: Repeats the block of code as long as the condition is true.
- **Do While Loop**: Executes the block at least once and then continues based on the condition.

## 3. For Loop in Dart

The `for` loop is ideal when you need to repeat code a specific number of times. It uses an initializer, a condition, and an increment/decrement operation.

### Syntax:
```dart
for (initialization; condition; increment/decrement) {
  // Code to execute repeatedly
}
```

### Example:
```dart
void main() {
  for (int i = 0; i < 5; i++) {
    print('i: $i');
  }
}
```

### Explanation:
- The loop initializes `i = 0`, checks the condition `i < 5`, and increments `i++` after each iteration.
- The loop stops when the condition becomes false.

### Nested For Loops:
You can also nest for loops to handle more complex iterations, such as iterating through a 2D array.

### Example:
```dart
void main() {
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 2; j++) {
      print('i: $i, j: $j');
    }
  }
}
```


## 4. For Each Loop in Dart

The `forEach` loop is primarily used to iterate over elements in collections, such as lists and sets. It simplifies the process of applying a function to each element.

### Example:
```dart
void main() {
  List<String> names = ['Alice', 'Bob', 'Charlie'];

  names.forEach((name) {
    print('Name: $name');
  });
}
```

### Explanation:
- `forEach` loops over each element in the list `names` and applies the specified function.

### Enhanced For Loop:
Another way to iterate over a collection is with a **for-in loop**.

### Example:
```dart
void main() {
  List<int> numbers = [10, 20, 30];

  for (var number in numbers) {
    print('Number: $number');
  }
}
```

## 5. While Loop in Dart

The `while` loop continues to execute as long as the specified condition remains true.

### Syntax:
```dart
while (condition) {
  // Code to execute repeatedly
}
```

### Example:
```dart
void main() {
  int count = 0;

  while (count < 5) {
    print('Count: $count');
    count++;
  }
}
```

### Explanation:
- The condition is checked before each iteration.
- If the condition is true, the loop body executes; otherwise, the loop terminates.

## 6. Do While Loop in Dart

The `do while` loop is similar to the `while` loop, but the condition is checked after executing the loop body. This guarantees that the code runs at least once.

### Syntax:
```dart
do {
  // Code to execute
} while (condition);
```

### Example:
```dart
void main() {
  int count = 0;

  do {
    print('Count: $count');
    count++;
  } while (count < 5);
}
```

### Explanation:
- The code inside the `do` block executes first and then the condition is evaluated.

## 7. Switch Case in Dart

The `switch` statement allows you to execute code based on the value of a variable. It compares the variable to a set of `case` values and executes the corresponding block of code.

### Syntax:
```dart
switch (expression) {
  case value1:
    // Code to execute if expression equals value1
    break;
  case value2:
    // Code to execute if expression equals value2
    break;
  default:
    // Code to execute if no cases match
}
```

### Example:
```dart
void main() {
  int day = 3;

  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    default:
      print('Invalid day');
  }
}
```

### Explanation:
- The `switch` checks the value of `day` and matches it against the defined cases.
- The `break` statement ensures that only one case is executed.

## 8. Break and Continue in Dart

### Break:
The `break` statement is used to exit a loop or switch case prematurely.

### Continue:
The `continue` statement skips the remaining code in the current iteration and proceeds to the next iteration.

### Example:
```dart
void main() {
  for (int i = 0; i < 5; i++) {
    if (i == 3) {
      continue;  // Skip the current iteration when i == 3
    }
    if (i == 4) {
      break;  // Exit the loop when i == 4
    }
    print('i: $i');
  }
}
```

### Explanation:
- `continue` skips the rest of the iteration when `i == 3`, and `break` exits the loop when `i == 4`.


## 9. Ternary Operator in Dart

The ternary operator is a shorthand for `if-else` statements and is especially useful for simple conditions.

### Syntax:
```dart
condition ? expression1 : expression2
```

### Example:
```dart
void main() {
  int age = 18;

  String eligibility = (age >= 18) ? 'Eligible to vote' : 'Not eligible to vote';
  print(eligibility);  // Eligible to vote
}
```

### Explanation:
- The ternary operator checks whether `age >= 18` and returns `'Eligible to vote'` if true; otherwise, it returns `'Not eligible to vote'`.

## 10. Exception Handling in Dart

Dart provides exception handling to catch runtime errors and handle them gracefully. You can use the `try`, `catch`, `on`, and `finally` blocks to manage exceptions.

### Example:
```dart
void main() {
  try {
    int result = 10 ~/ 0;  // This will throw an exception (division by zero)
    print(result);
  } on IntegerDivisionByZeroException {
    print('Cannot divide by zero.');
  } catch (e) {
    print('Caught an exception: $e');
  } finally {
    print('This code runs regardless of an exception.');
  }
}
```

### Explanation:
- The `try` block contains code that may throw an exception.
- The `on` block catches a specific type of exception (`IntegerDivisionByZeroException`).
- The `catch` block catches any type of exception and allows you to handle it.
- The `finally` block contains code that will run whether or not an exception occurred, typically used for cleanup tasks.

### Custom Exceptions:
You can also create your own custom exceptions in Dart.

### Example:
```dart
class CustomException implements Exception {
  String cause;
  CustomException(this.cause);
}

void main() {
  try {
    throw CustomException('Something went wrong!');
  } catch (e) {
    print('Caught custom exception: $e');
  }
}
```

### Explanation:
- You can create custom exceptions by implementing the `Exception` class and throwing it using the `throw` keyword.

## Summary

In Dart, conditions and loops allow you to control the flow of your program effectively. Here's what we've covered:
- **Conditions** with `if-else` and `switch-case`
- Various **loops**: `for`, `forEach`, `while`, `do while`
- **Break** and **continue** to control loop flow
- **Ternary operators** for shorthand conditions
- **Exception handling** for managing runtime errors.

These constructs provide the backbone for most control flow in Dart applications.

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
