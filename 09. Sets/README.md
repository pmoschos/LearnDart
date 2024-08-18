
<p align="center">
  <img src="https://img.shields.io/badge/Dart-%230175C2.svg?logo=dart&logoColor=white" alt="Dart Badge" width="200"/>
</p>

# 📜 Sets in Dart

A **Set** in Dart is an unordered collection of unique elements. Unlike Lists, Sets do not allow duplicate values, which makes them ideal when you need to store distinct values. Sets are also faster than lists for certain operations, such as checking membership, because they do not rely on order.

## 📑 Table of Contents

1. [🔧 What is a Set?](#what-is-a-set)
2. [🛠️ Creating a Set](#creating-a-set)
3. [🔍 Set Properties](#set-properties)
4. [📦 Adding and Removing Elements](#adding-and-removing-elements)
5. [🧹 Clearing and Difference Operations](#clearing-and-difference-operations)
6. [🔄 Iterating Over a Set](#iterating-over-a-set)
7. [🔗 Set Methods in Dart](#set-methods-in-dart)
8. [🔗 Intersection in Sets](#intersection-in-sets)

---

## 🔧 What is a Set?

A **Set** in Dart is an unordered collection of distinct items. Sets do not store duplicate values and are represented by curly braces `{}`. This makes Sets a useful choice when you need to enforce uniqueness and do not need to maintain order.

### Syntax:
```dart
Set<elementType> setName = {};
```

### Example:
```dart
void main() {
  Set<String> animals = {"Cat", "Dog", "Parrot"};
  print(animals);  // Output: {Cat, Dog, Parrot}
}
```

### Explanation:
- A Set in Dart uses curly braces `{}` to store values.
- Sets automatically remove any duplicate elements.

---

## 🛠️ Creating a Set

You can create a Set in Dart by specifying the Set type and adding unique elements. Sets can only contain elements of the type you specify. For example, `Set<int>` contains only integers.

### Example:
```dart
void main() {
  Set<int> ages = {25, 30, 45, 60};
  print(ages);  // Output: {25, 30, 45, 60}
}
```

### Mixed-Type Sets:
You can also create a Set without specifying a type, allowing mixed-type elements.

### Example:
```dart
void main() {
  var mixedSet = {42, "Keyboard", true, 3.14};
  print(mixedSet);  // Output: {42, Keyboard, true, 3.14}
}
```

### Note:
- Sets do not allow duplicate elements.
- Sets are unordered, meaning the elements may not maintain the order of insertion.

---

## 🔍 Set Properties

Dart provides several useful properties for working with Sets.

| Property    | Description                         |
|-------------|-------------------------------------|
| `first`     | Returns the first element in the Set. |
| `last`      | Returns the last element in the Set.  |
| `isEmpty`   | Returns `true` if the Set is empty.  |
| `isNotEmpty`| Returns `true` if the Set is not empty. |
| `length`    | Returns the number of elements in the Set. |

### Example:
```dart
void main() {
  Set<String> cities = {"Tokyo", "Paris", "London", "Sydney"};

  print("First City: ${cities.first}");  // Output: Tokyo
  print("Last City: ${cities.last}");    // Output: Sydney
  print("Is Empty? ${cities.isEmpty}");  // Output: false
  print("Length: ${cities.length}");     // Output: 4
}
```

---

## 📦 Adding and Removing Elements

You can add or remove items from a Set just like in lists. Here are some useful methods:

| Method      | Description                         |
|-------------|-------------------------------------|
| `add()`     | Adds a single element to the Set.   |
| `remove()`  | Removes a specific element from the Set. |
| `addAll()`  | Adds multiple elements to the Set.  |

### Example: Adding and Removing Elements
```dart
void main() {
  Set<String> movies = {"Inception", "Matrix", "Interstellar"};
  
  // Adding elements
  movies.add("Dune");
  print(movies);  // Output: {Inception, Matrix, Interstellar, Dune}
  
  // Removing elements
  movies.remove("Matrix");
  print(movies);  // Output: {Inception, Interstellar, Dune}
}
```

### Adding Multiple Elements:
You can add multiple elements to a Set at once using the `addAll()` method.

### Example:
```dart
void main() {
  Set<double> prices = {19.99, 24.50, 30.00};
  prices.addAll([40.99, 50.75]);
  print("After adding: $prices");  // Output: {19.99, 24.50, 30.00, 40.99, 50.75}
}
```

---

## 🧹 Clearing and Difference Operations

Sets allow you to remove all elements or calculate the difference between two sets.

### Clearing a Set:
You can remove all elements from a Set using the `clear()` method.

### Example:
```dart
void main() {
  Set<String> books = {"1984", "Brave New World", "Fahrenheit 451"};
  books.clear();
  print(books);  // Output: {}
}
```

### Finding the Difference:
The `difference()` method creates a new Set containing elements that are present in the first Set but not in the second Set.

### Example:
```dart
void main() {
  Set<String> breakfastItems = {"Pancakes", "Waffles", "Coffee"};
  Set<String> lunchItems = {"Coffee", "Sandwich", "Salad"};

  final differenceSet = breakfastItems.difference(lunchItems);
  print(differenceSet);  // Output: {Pancakes, Waffles}
}
```

---

## 🔄 Iterating Over a Set

You can use loops to iterate over the elements in a Set. Since Sets are unordered, the order of iteration is not guaranteed.

### Example:
```dart
void main() {
  Set<String> colors = {"Red", "Green", "Blue"};
  
  for (String color in colors) {
    print(color);
  }
}
```

---

## 🔗 Set Methods in Dart

Dart provides several useful methods for manipulating Sets:

| Method         | Description                                     |
|----------------|-------------------------------------------------|
| `clear()`      | Removes all elements from the Set.              |
| `difference()` | Returns a new Set with elements not in another Set. |
| `elementAt()`  | Returns the element at the specified index.     |
| `intersection()` | Returns a new Set with the common elements of two Sets. |

### Example: Finding an Element by Index
```dart
void main() {
  Set<String> months = {"January", "February", "March"};
  print(months.elementAt(1));  // Output: February
}
```

---

## 🔗 Intersection in Sets

The **`intersection()`** method creates a new Set containing only the elements that exist in both Sets. This is useful when you want to find common values between two sets.

### Example:
```dart
void main() {
  Set<String> sports1 = {"Soccer", "Basketball", "Cricket"};
  Set<String> sports2 = {"Cricket", "Rugby", "Hockey"};

  final commonSports = sports1.intersection(sports2);
  print(commonSports);  // Output: {Cricket}
}
```

---

## 🎯 Conclusion

Sets in Dart are powerful collections that ensure uniqueness and provide fast membership checks. They are particularly useful for working with distinct values and performing operations like finding differences or intersections.

Key Takeaways:
- **Sets** are unordered collections that do not allow duplicates.
- **Methods** like `add()`, `remove()`, `difference()`, and `intersection()` help you manipulate Sets effectively.

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
