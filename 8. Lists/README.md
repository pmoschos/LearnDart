
<p align="center">
  <img src="https://img.shields.io/badge/Dart-%230175C2.svg?logo=dart&logoColor=white" alt="Dart Badge" width="200"/>
</p>

# 📋 Lists in Dart

Lists in Dart are ordered collections that store multiple values in a single variable. Lists are very similar to arrays in other programming languages. They are commonly used when you want to group and manage multiple related values, such as storing the names of multiple students or the ages of a group of people.

## 📑 Table of Contents

1. [🚀 What is a List?](#what-is-a-list)
2. [🛠️ Types of Lists](#types-of-lists)
   - Fixed Length List
   - Growable List
3. [🔑 Accessing List Elements](#accessing-list-elements)
4. [🔍 List Properties](#list-properties)
5. [📝 Modifying Lists](#modifying-lists)
   - Changing Values
   - Adding Elements
   - Replacing a Range
6. [🧹 Removing List Elements](#removing-list-elements)
7. [🔄 Iterating Over a List](#iterating-over-a-list)
8. [📊 Combining and Filtering Lists](#combining-and-filtering-lists)

---

## 🚀 What is a List?

A **List** in Dart is an ordered collection of elements. Lists are represented using square brackets `[]` and can store multiple values of the same or different types.

### Example:
```dart
void main() {
  // Integer List
  List<int> ages = [10, 30, 23];

  // String List
  List<String> names = ["Raj", "John", "Rocky"];

  // Mixed List
  var mixed = [10, "John", 18.8];

  print(ages);  // Output: [10, 30, 23]
  print(names);  // Output: [Raj, John, Rocky]
  print(mixed);  // Output: [10, John, 18.8]
}
```

### Explanation:
- A List can contain different types of elements.
- Lists are ordered, meaning that the elements maintain the order in which they were added.

---

## 🛠️ Types of Lists

Dart provides two types of lists: **Fixed Length List** and **Growable List**.

### 🟦 Fixed Length List

In a **Fixed Length List**, the length of the list is defined at the time of creation and cannot be changed during runtime. You can modify the elements but cannot add or remove elements.

### Example:
```dart
void main() {
  var list = List<int>.filled(5, 0);  // Create a fixed length list of 5 elements initialized to 0
  print(list);  // Output: [0, 0, 0, 0, 0]

  // Modifying elements
  list[2] = 5;
  print(list);  // Output: [0, 0, 5, 0, 0]
}
```

### 🟩 Growable List (Mostly Used)

A **Growable List** does not have a fixed size. You can add or remove elements during runtime, making it more flexible than a fixed-length list.

### Example:
```dart
void main() {
  var list1 = [210, 21, 22, 33, 44, 55];
  print(list1);  // Output: [210, 21, 22, 33, 44, 55]

  // Adding an element
  list1.add(66);
  print(list1);  // Output: [210, 21, 22, 33, 44, 55, 66]
}
```

---

## 🔑 Accessing List Elements

You can access List elements by their index. Remember that the index in a list always starts at `0`.

### Example:
```dart
void main() {
  var list = [210, 21, 22, 33, 44, 55];

  print(list[0]);  // Output: 210
  print(list[1]);  // Output: 21
}
```

### Explanation:
- The first element has index `0`, the second element has index `1`, and so on.

---

## 🔍 List Properties

Dart lists come with several useful properties:

- **`first`**: Returns the first element in the list.
- **`last`**: Returns the last element in the list.
- **`isEmpty`**: Checks if the list is empty.
- **`isNotEmpty`**: Checks if the list is not empty.
- **`length`**: Returns the number of elements in the list.
- **`reversed`**: Returns the list in reverse order.
- **`single`**: Checks if the list contains exactly one element and returns it.

### Example:
```dart
void main() {
  List<String> drinks = ["water", "juice", "milk", "coke"];

  print("First element: ${drinks.first}");  // Output: water
  print("Last element: ${drinks.last}");  // Output: coke
  print("Is empty: ${drinks.isEmpty}");  // Output: false
}
```

---

## 📝 Modifying Lists

Lists in Dart are mutable, meaning you can modify them after their creation.

### Changing Values:
You can change values at specific indices in the list.

### Example:
```dart
void main() {
  List<String> names = ["Raj", "John", "Rocky"];
  names[1] = "Bill";
  print(names);  // Output: [Raj, Bill, Rocky]
}
```

---

## 🧹 Removing List Elements

Dart provides several methods to remove elements from a list:

- **`remove()`**: Removes the first occurrence of a specific element.
- **`removeAt()`**: Removes the element at a specific index.
- **`removeLast()`**: Removes the last element of the list.
- **`removeRange()`**: Removes a range of elements from the list.

### Example:
```dart
void main() {
  var list = [10, 20, 30, 40, 50];
  
  list.remove(30);
  print(list);  // Output: [10, 20, 40, 50]

  list.removeAt(1);
  print(list);  // Output: [10, 40, 50]
}
```

---

## 🔄 Iterating Over a List

Dart offers multiple ways to iterate over lists, such as using `for` loops, `forEach()`, and functional methods like `map()`.

### Example:
```dart
void main() {
  List<int> numbers = [10, 20, 30, 40, 50];
  numbers.forEach((n) => print(n));
}
```

---

## 📊 Combining and Filtering Lists

### Combining Lists:
You can combine two or more lists in Dart using the **spread syntax** (`...`).

### Example:
```dart
void main() {
  List<String> list1 = ["Raj", "John"];
  List<String> list2 = ["Mike", "Mark"];

  List<String> combinedList = [...list1, ...list2];
  print(combinedList);  // Output: [Raj, John, Mike, Mark]
}
```

### Filtering Lists:
You can use the **`where`** method to filter lists based on specific conditions.

### Example:
```dart
void main() {
  List<int> numbers = [2, 4, 6, 8, 10, 11, 12, 13];
  List<int> evenNumbers = numbers.where((number) => number.isEven).toList();

  print(evenNumbers);  // Output: [2, 4, 6, 8, 10, 12]
}
```

---

## 🎯 Conclusion

Lists in Dart are powerful and flexible data structures that allow you to store, manage, and manipulate collections of data efficiently. Understanding how to work with lists—whether it’s adding, removing, filtering, or combining elements—will enhance your ability to handle dynamic data in Dart programs.

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
