
<p align="center">
  <img src="https://img.shields.io/badge/Dart-%230175C2.svg?logo=dart&logoColor=white" alt="Dart Badge" width="200"/>
</p>

# 📋 Dart Lists

Dart Lists are ordered collections that allow you to store multiple values in a single variable. Lists can contain elements of the same or different types and are fundamental when working with collections of data.

## 📑 Table of Contents

1. [🚀 Introduction to Lists](#introduction-to-lists)
2. [🛠️ Types of Lists](#types-of-lists)
   - Fixed Length List
   - Growable List
3. [🔑 Accessing Elements](#accessing-elements)
4. [🔍 Properties of Lists](#properties-of-lists)
5. [📝 Modifying Lists](#modifying-lists)
   - Updating Values
   - Adding Items
   - Replacing Ranges
6. [🧹 Removing Items from a List](#removing-items-from-a-list)
7. [🔄 Looping Through Lists](#looping-through-lists)
8. [📊 Combining and Filtering Lists](#combining-and-filtering-lists)

---

## 🚀 Introduction to Lists

A **List** in Dart is an ordered sequence of elements, which can be created using square brackets `[]`. Lists can hold a single type of data or various types depending on your needs.

### Example:
```dart
void main() {
  // List of integers
  List<int> scores = [85, 92, 78];

  // List of strings
  List<String> colors = ["red", "blue", "green"];

  // Mixed List
  var info = [23, "Alex", true];

  print(scores);  // Output: [85, 92, 78]
  print(colors);  // Output: [red, blue, green]
  print(info);  // Output: [23, Alex, true]
}
```

### Explanation:
- A List maintains the order in which elements are added.
- Lists can be homogeneous or heterogeneous based on your data requirements.

---

## 🛠️ Types of Lists

Dart provides two main types of lists: **Fixed Length List** and **Growable List**.

### 🟦 Fixed Length List

A **Fixed Length List** is initialized with a set number of elements, which cannot be expanded or reduced later. You can modify existing values but cannot add or remove elements.

### Example:
```dart
void main() {
  var fixedList = List<int>.filled(3, 0);  // Fixed size of 3
  print(fixedList);  // Output: [0, 0, 0]

  // Update an element
  fixedList[1] = 9;
  print(fixedList);  // Output: [0, 9, 0]
}
```

### 🟩 Growable List

A **Growable List** is more dynamic and allows adding and removing elements during runtime.

### Example:
```dart
void main() {
  var cities = ["New York", "Paris", "London"];
  print(cities);  // Output: [New York, Paris, London]

  cities.add("Tokyo");
  print(cities);  // Output: [New York, Paris, London, Tokyo]
}
```

---

## 🔑 Accessing Elements

You can access the elements of a list using their index. Dart list indices start from `0`.

### Example:
```dart
void main() {
  var fruits = ["Apple", "Banana", "Cherry"];

  print(fruits[0]);  // Output: Apple
  print(fruits[2]);  // Output: Cherry
}
```

### Explanation:
- The index `0` corresponds to the first element, index `1` to the second, and so on.

---

## 🔍 Properties of Lists

Dart lists have various properties that make them convenient to work with:

- **`first`**: Returns the first element.
- **`last`**: Returns the last element.
- **`isEmpty`**: Returns `true` if the list is empty.
- **`isNotEmpty`**: Returns `true` if the list is not empty.
- **`length`**: Returns the total number of elements.
- **`reversed`**: Returns an iterable with the elements in reverse order.
- **`single`**: Returns the only element in the list, if the list has exactly one element.

### Example:
```dart
void main() {
  List<String> pets = ["cat", "dog", "rabbit"];

  print("First pet: ${pets.first}");  // Output: cat
  print("Last pet: ${pets.last}");  // Output: rabbit
  print("List length: ${pets.length}");  // Output: 3
}
```

---

## 📝 Modifying Lists

Lists in Dart are mutable, so you can modify their contents after they are created.

### Updating Values:
You can update elements by accessing them via their index.

### Example:
```dart
void main() {
  var countries = ["India", "Brazil", "China"];
  countries[1] = "Canada";
  print(countries);  // Output: [India, Canada, China]
}
```

---

## 🧹 Removing Items from a List

Dart provides several methods to remove elements from a list:

- **`remove()`**: Removes the first occurrence of a value.
- **`removeAt()`**: Removes an element at a specific index.
- **`removeLast()`**: Removes the last element in the list.
- **`removeRange()`**: Removes a range of elements.

### Example:
```dart
void main() {
  var scores = [100, 95, 80, 75];

  scores.remove(95);
  print(scores);  // Output: [100, 80, 75]

  scores.removeAt(1);
  print(scores);  // Output: [100, 75]
}
```

---

## 🔄 Looping Through Lists

You can iterate over a list in Dart using `for` loops, `forEach()` methods, or higher-order functions like `map()`.

### Example:
```dart
void main() {
  List<int> ages = [12, 16, 18, 21];
  ages.forEach((age) => print(age));
}
```

---

## 📊 Combining and Filtering Lists

### Combining Lists:
You can combine multiple lists using the **spread operator** (`...`).

### Example:
```dart
void main() {
  var firstSet = ["Anna", "Ben"];
  var secondSet = ["Eve", "Tom"];

  var combined = [...firstSet, ...secondSet];
  print(combined);  // Output: [Anna, Ben, Eve, Tom]
}
```

### Filtering Lists:
You can use the **`where`** method to filter out elements based on conditions.

### Example:
```dart
void main() {
  List<int> numbers = [7, 14, 21, 28, 35];
  var divisibleBySeven = numbers.where((n) => n % 7 == 0).toList();

  print(divisibleBySeven);  // Output: [7, 14, 21, 28, 35]
}
```

---

## 🎯 Conclusion

Dart Lists are essential for managing collections of data. With a variety of methods and properties at your disposal, you can easily create, manipulate, and iterate over lists in Dart to handle dynamic data in your applications.

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
