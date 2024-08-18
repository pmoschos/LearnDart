<p align="center">
  <img src="https://img.shields.io/badge/Dart-%230175C2.svg?logo=dart&logoColor=white" alt="Dart Badge" width="200"/>
</p>

# User Input in Dart

Dart is a modern programming language that makes it easy to handle user input. Whether you are building a command-line application or a web/mobile application, understanding how to accept and process user input is essential. In this guide, we will explore how to capture and work with user input in Dart, focusing on command-line applications.

## User Input in Dart

For command-line applications, the most common way to capture user input in Dart is by using the `dart:io` library, which provides access to input and output streams.

### Steps to Capture User Input

1. **Import the `dart:io` Library**
2. **Use `stdin.readLineSync()` to Capture Input**
3. **Parse Input if Necessary (e.g., to an integer)**

Let's break down each of these steps with detailed examples.

## 1. 📥 Capturing Simple Text Input

The `stdin.readLineSync()` method allows you to capture input from the user as a string.

```dart
import 'dart:io';

void main() {
  print('Please enter your name: ');
  String? name = stdin.readLineSync();  // Read user input
  
  print('Hello, $name!');  // Print user input
}
```

### Explanation:
- We import the `dart:io` library to use the `stdin` object for reading input.
- The `stdin.readLineSync()` method reads a line of input from the user.
- Since the input can be `null`, we use the nullable type `String?`.

## 2. 🔢 Capturing and Parsing Numeric Input

In many cases, we need to capture and process numeric input. This can be done by parsing the string input into a number.

```dart
import 'dart:io';

void main() {
  print('Enter your age: ');
  String? input = stdin.readLineSync();
  
  if (input != null) {
    int? age = int.tryParse(input);  // Convert input to an integer
    
    if (age != null) {
      print('Your age is $age.');
    } else {
      print('Invalid input. Please enter a valid number.');
    }
  }
}
```

### Explanation:
- We capture the input as a string and then use `int.tryParse()` to convert it to an integer.
- `int.tryParse()` returns `null` if the input cannot be parsed, making it safer than `int.parse()`.

## 3. 🌐 Handling Multiple Inputs

Sometimes, you need to capture multiple inputs, such as first name and last name, or even a list of items.

```dart
import 'dart:io';

void main() {
  print('Enter your first name: ');
  String? firstName = stdin.readLineSync();
  
  print('Enter your last name: ');
  String? lastName = stdin.readLineSync();
  
  print('Welcome, $firstName $lastName!');
}
```

### Explanation:
- We use multiple calls to `stdin.readLineSync()` to capture different inputs.
- You can combine or manipulate the inputs as needed.

## 4. 🧠 Validating User Input

It's essential to validate user input to ensure the program behaves correctly and does not crash due to invalid data.

```dart
import 'dart:io';

void main() {
  print('Enter a number between 1 and 10: ');
  String? input = stdin.readLineSync();
  
  if (input != null) {
    int? number = int.tryParse(input);
    
    if (number != null && number > 0 && number <= 10) {
      print('You entered a valid number: $number');
    } else {
      print('Please enter a number between 1 and 10.');
    }
  }
}
```

### Explanation:
- We validate that the input is a number and falls within the specified range.
- If the validation fails, the user is prompted with an error message.

## 5. 🔄 Looping for Continuous Input

In some scenarios, you may want the user to enter data multiple times or until they meet certain conditions.

```dart
import 'dart:io';

void main() {
  String? input;
  
  do {
    print('Enter a number (or type "exit" to quit): ');
    input = stdin.readLineSync();
    
    if (input != null && input != 'exit') {
      int? number = int.tryParse(input);
      
      if (number != null) {
        print('You entered: $number');
      } else {
        print('Invalid number.');
      }
    }
  } while (input != 'exit');
  
  print('Goodbye!');
}
```

### Explanation:
- The program continues to prompt the user for input until they type "exit".
- Validates each input as a number and handles invalid input gracefully.

## Summary

- **`stdin.readLineSync()`** is the primary method for capturing user input in command-line Dart applications.
- You can parse and validate input to ensure correctness using methods like `int.tryParse()`.
- Looping constructs help manage continuous user input efficiently.

Understanding how to handle user input is crucial for building interactive applications in Dart. With these techniques, you can create robust and user-friendly command-line programs.

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
