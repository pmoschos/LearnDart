
<p align="center">
  <img src="https://img.shields.io/badge/Dart-%230175C2.svg?logo=dart&logoColor=white" alt="Dart Badge" width="200"/>
</p>

# Strings in Dart

Strings are an essential part of any programming language, and Dart offers powerful and flexible ways to work with them. In Dart, strings are sequences of UTF-16 code units and are immutable, meaning their content cannot be changed once created. In this guide, we'll explore how to create, manipulate, and utilize strings in Dart.

## Creating Strings

You can create strings in Dart using either single quotes (`'`) or double quotes (`"`). Multiline strings can be created using triple quotes.

```dart
void main() {
  String singleQuote = 'Hello, Dart!';
  String doubleQuote = "Hello, Dart!";
  String multiline = '''
  This is a multiline string
  in Dart.''';
  
  print(singleQuote);
  print(doubleQuote);
  print(multiline);
}
```

## 1. 🔗 String Concatenation

Dart provides multiple ways to concatenate strings:

1. **Using the `+` operator**
2. **String Interpolation**

### Example:
```dart
void main() {
  String firstName = 'Panagiotis';
  String lastName = 'Moschos';
  
  // Using + operator
  String fullName = firstName + ' ' + lastName;
  print(fullName);  // Panagiotis Moschos
  
  // Using string interpolation
  String fullName2 = '$firstName $lastName';
  print(fullName2);  // Panagiotis Moschos
}
```

### Explanation:
- You can use the `+` operator for simple concatenation, but string interpolation (`$variable`) is more concise and preferred.

## 2. 🛠️ String Properties

Dart strings have several useful properties:

| Property  | Description                                      |
|-----------|--------------------------------------------------|
| `length`  | Returns the number of characters in the string.  |
| `isEmpty` | Returns `true` if the string is empty.           |
| `isNotEmpty` | Returns `true` if the string is not empty.   |

### Example:
```dart
void main() {
  String greeting = 'Hello, Dart!';
  
  print(greeting.length);        // 12
  print(greeting.isEmpty);       // false
  print(greeting.isNotEmpty);    // true
}
```

## 3. 💡 String Methods Overview

Dart offers a variety of methods to work with strings. Below is a summary of common string methods along with a short explanation of what they do.

| Method              | Explanation                                                  |
|---------------------|--------------------------------------------------------------|
| `toUpperCase()`      | Converts all characters to uppercase.                        |
| `toLowerCase()`      | Converts all characters to lowercase.                        |
| `trim()`             | Removes leading and trailing whitespace.                     |
| `trimLeft()`         | Removes leading whitespace only.                             |
| `trimRight()`        | Removes trailing whitespace only.                            |
| `substring()`        | Extracts a portion of the string between two indices.        |
| `contains()`         | Checks if the string contains a specified substring.         |
| `replaceAll()`       | Replaces all occurrences of a substring with another.        |
| `split()`            | Splits the string into a list of substrings based on a delimiter. |
| `codeUnitAt()`       | Returns the UTF-16 code unit at a specific index.            |
| `startsWith()`       | Checks if the string starts with a specified substring.      |
| `endsWith()`         | Checks if the string ends with a specified substring.        |
| `indexOf()`          | Finds the index of the first occurrence of a substring.      |
| `padLeft()`          | Pads the string from the left with specified characters.     |
| `padRight()`         | Pads the string from the right with specified characters.    |
| `replaceFirst()`     | Replaces the first occurrence of a substring.                |
| `lastIndexOf()`      | Finds the last occurrence of a substring.                    |
| `compareTo()`        | Compares this string with another string lexicographically.  |

Now, let's proceed to detailed examples of each method:

## 3. 🔧 String Methods

Dart strings come with a wide variety of built-in methods that allow you to manipulate and transform them. Below is a list of some common string methods with examples.

### 3.1 `toUpperCase()` / `toLowerCase()`
Converts all characters in the string to uppercase or lowercase.

```dart
void main() {
  String greeting = 'Hello, Dart!';
  
  print(greeting.toUpperCase());  // HELLO, DART!
  print(greeting.toLowerCase());  // hello, dart!
}
```

### 3.2 `trim()` / `trimLeft()` / `trimRight()`
Removes whitespace from both sides, left side, or right side of the string.

```dart
void main() {
  String padded = '  Hello, Dart!  ';
  
  print(padded.trim());       // 'Hello, Dart!'
  print(padded.trimLeft());   // 'Hello, Dart!  '
  print(padded.trimRight());  // '  Hello, Dart!'
}
```

### 3.3 `substring()`
Extracts a substring from the original string, starting at a given index and optionally ending at another index.

```dart
void main() {
  String text = 'Hello, Dart!';
  
  print(text.substring(7));     // 'Dart!'
  print(text.substring(0, 5));  // 'Hello'
}
```

### 3.4 `contains()`
Checks if the string contains a particular substring.

```dart
void main() {
  String text = 'Hello, Dart!';
  
  print(text.contains('Dart'));  // true
  print(text.contains('Java'));  // false
}
```

### 3.5 `replaceAll()`
Replaces all occurrences of a specified substring with another substring.

```dart
void main() {
  String text = 'Hello, World!';
  
  print(text.replaceAll('World', 'Dart'));  // 'Hello, Dart!'
}
```

### 3.6 `split()`
Splits the string into a list of substrings based on a delimiter.

```dart
void main() {
  String text = 'Dart is awesome!';
  
  List<String> words = text.split(' ');
  print(words);  // [Dart, is, awesome!]
}
```

### 3.7 `codeUnitAt()`
Returns the UTF-16 code unit at a given index.

```dart
void main() {
  String text = 'Dart';
  
  print(text.codeUnitAt(0));  // 68 (UTF-16 code for 'D')
}
```

### 3.8 `startsWith()` / `endsWith()`
Checks if the string starts or ends with a particular substring.

```dart
void main() {
  String text = 'Hello, Dart!';
  
  print(text.startsWith('Hello'));  // true
  print(text.endsWith('Dart!'));    // true
}
```

### 3.9 `indexOf()`
Returns the index of the first occurrence of a substring.

```dart
void main() {
  String text = 'Hello, Dart!';
  
  print(text.indexOf('Dart'));  // 7
}
```

### 3.10 `padLeft()` / `padRight()`
Pads the string with characters on the left or right side until the string reaches the desired length.

```dart
void main() {
  String text = 'Dart';
  
  print(text.padLeft(8));    // '    Dart'
  print(text.padRight(8, '*'));  // 'Dart****'
}
```

## Summary

- Dart strings are immutable sequences of characters.
- **String concatenation** can be done using the `+` operator or string interpolation.
- Dart provides several useful **properties** such as `length`, `isEmpty`, and `isNotEmpty`.
- Dart offers many **methods** to manipulate strings, including `toUpperCase()`, `substring()`, `contains()`, `replaceAll()`, `split()`, and more.

Understanding how to work with strings and their methods will help you write cleaner and more efficient code in Dart.

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
