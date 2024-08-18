
<p align="center">
  <img src="https://img.shields.io/badge/Dart-%230175C2.svg?logo=dart&logoColor=white" alt="Dart Badge" width="200"/>
</p>

# 🗺️ Maps in Dart

A **Map** in Dart is an unordered collection of key-value pairs. Each key in the map is unique, and it is associated with a value. Maps are ideal when you need to associate a value with a unique key, such as storing the name of a city and its population or an employee's ID and their salary.

## 📑 Table of Contents

1. [🔧 What is a Map?](#what-is-a-map)
2. [🛠️ Creating a Map](#creating-a-map)
3. [🔍 Accessing Map Elements](#accessing-map-elements)
4. [📜 Map Properties](#map-properties)
5. [📦 Adding and Removing Elements](#adding-and-removing-elements)
6. [🔄 Iterating Over a Map](#iterating-over-a-map)
7. [🔗 Useful Map Methods in Dart](#useful-map-methods-in-dart)
8. [🔄 Combining and Checking Map Elements](#combining-and-checking-map-elements)
9. [🔨 Complete List of Map Methods](#complete-list-of-map-methods)

---

## 🔧 What is a Map?

A **Map** in Dart is an unordered collection of key-value pairs where each key is associated with one value. Maps allow quick lookup of values using their corresponding keys.

### Syntax:
```dart
Map<keyType, valueType> mapName = {};
```

### Example:
```dart
void main() {
  Map<String, int> population = {
    "New York": 8175133,
    "Los Angeles": 3792621,
    "Chicago": 2695598
  };

  print(population);  // Output: {New York: 8175133, Los Angeles: 3792621, Chicago: 2695598}
}
```

### Explanation:
- Maps store values as key-value pairs.
- Each key in a map must be unique, but the values can be duplicated.

---

## 🛠️ Creating a Map

You can create a Map in Dart by specifying the types of keys and values. The syntax involves using curly braces `{}` and separating keys from values with a colon `:`.

### Example:
```dart
void main() {
  Map<String, double> productPrices = {
    "Laptop": 999.99,
    "Phone": 699.99,
    "Tablet": 499.99
  };

  print(productPrices);  // Output: {Laptop: 999.99, Phone: 699.99, Tablet: 499.99}
}
```

### Mixed-Type Maps:
Maps can also have mixed types for keys and values.

### Example:
```dart
void main() {
  var mixedMap = {
    "Age": 28,
    101: "Product Code",
    true: "Active"
  };
  print(mixedMap);  // Output: {Age: 28, 101: Product Code, true: Active}
}
```

---

## 🔍 Accessing Map Elements

You can access Map elements by using the key inside square brackets `[]`. If the key exists, the corresponding value is returned.

### Example:
```dart
void main() {
  Map<String, String> capitals = {
    "Japan": "Tokyo",
    "France": "Paris",
    "Australia": "Canberra"
  };

  print(capitals["Japan"]);  // Output: Tokyo
  print(capitals["France"]); // Output: Paris
}
```

### Explanation:
- If the key exists in the map, its corresponding value is returned.
- If the key does not exist, Dart returns `null`.

---

## 📜 Map Properties

Maps in Dart have several useful properties to help manage the collection.

| Property    | Description                                |
|-------------|--------------------------------------------|
| `isEmpty`   | Returns `true` if the map contains no elements. |
| `isNotEmpty`| Returns `true` if the map contains at least one element. |
| `length`    | Returns the number of key-value pairs in the map. |
| `keys`      | Returns an iterable of the map's keys.     |
| `values`    | Returns an iterable of the map's values.   |

### Example:
```dart
void main() {
  Map<String, String> countryCodes = {
    "US": "United States",
    "DE": "Germany",
    "IN": "India"
  };

  print("Is Empty? ${countryCodes.isEmpty}");  // Output: false
  print("Length: ${countryCodes.length}");     // Output: 3
  print("Keys: ${countryCodes.keys.toList()}");  // Output: [US, DE, IN]
  print("Values: ${countryCodes.values.toList()}");  // Output: [United States, Germany, India]
}
```

---

## 📦 Adding and Removing Elements

Maps allow you to add new key-value pairs or remove existing ones using methods like `addAll()`, `remove()`, and `putIfAbsent()`.

### Adding New Elements:
```dart
void main() {
  Map<String, String> employees = {
    "E001": "Alice",
    "E002": "Bob",
  };

  // Adding a new key-value pair
  employees["E003"] = "Charlie";
  print(employees);  // Output: {E001: Alice, E002: Bob, E003: Charlie}
}
```

### Removing Elements:
```dart
void main() {
  Map<String, int> scores = {
    "Alice": 95,
    "Bob": 85,
    "Charlie": 78
  };

  // Removing an element by key
  scores.remove("Bob");
  print(scores);  // Output: {Alice: 95, Charlie: 78}
}
```

---

## 🔄 Iterating Over a Map

Dart provides multiple ways to iterate over the elements of a map, including using `forEach()` and looping through keys and values separately.

### Iterating Using forEach:
```dart
void main() {
  Map<String, double> grades = {
    "Math": 88.5,
    "Science": 92.3,
    "History": 79.6
  };

  grades.forEach((subject, grade) {
    print("$subject: $grade");
  });
  // Output:
  // Math: 88.5
  // Science: 92.3
  // History: 79.6
}
```

### Iterating Over Keys and Values Separately:
```dart
void main() {
  Map<String, double> itemWeights = {
    "Book": 1.2,
    "Laptop": 2.5,
    "Phone": 0.3
  };

  // Iterating over keys
  for (String item in itemWeights.keys) {
    print("Item: $item");
  }

  // Iterating over values
  for (double weight in itemWeights.values) {
    print("Weight: $weight");
  }
}
```

---

## 🔗 Useful Map Methods in Dart

Here are some useful methods for working with Maps in Dart:

| Method            | Description                                         |
|-------------------|-----------------------------------------------------|
| `putIfAbsent()`    | Adds a key-value pair only if the key is not present. |
| `containsKey()`    | Checks if a specific key exists in the map.         |
| `containsValue()`  | Checks if a specific value exists in the map.       |
| `remove()`         | Removes a key and its associated value from the map.|
| `clear()`          | Removes all key-value pairs from the map.           |
| `removeWhere()`    | Removes all key-value pairs that satisfy a condition.|

### Example: Using `putIfAbsent()`:
```dart
void main() {
  Map<String, String> countries = {
    "IN": "India",
    "US": "United States",
  };

  countries.putIfAbsent("UK", () => "United Kingdom");
  print(countries);  // Output: {IN: India, US: United States, UK: United Kingdom}
}
```

---

## 🔄 Combining and Checking Map Elements

You can combine multiple maps and check for specific keys or values.

### Combining Maps:
```dart
void main() {
  Map<String, int> map1 = {"A": 1, "B": 2};
  Map<String, int> map2 = {"C": 3, "D": 4};

  var combinedMap = {...map1, ...map2};
  print(combinedMap);  // Output: {A: 1, B: 2, C: 3, D: 4}
}
```

### Checking Keys and Values:
```dart
void main() {
  Map<String, String> superheroes = {
    "Clark": "Superman",
    "Bruce": "Batman",
    "Diana": "Wonder Woman"
  };

  print(superheroes.containsKey("Bruce"));  // Output: true
  print(superheroes.containsValue("Aquaman"));  // Output: false
}
```

---

## 🔨 Complete List of Map Methods

Dart provides a wide range of methods to manipulate Maps effectively. Here is a complete list:

| Method               | Description                                           |
|----------------------|-------------------------------------------------------|
| `putIfAbsent()`       | Adds a key-value pair only if the key does not exist. |
| `containsKey()`       | Checks if the map contains the specified key.         |
| `containsValue()`     | Checks if the map contains the specified value.       |
| `remove()`            | Removes the specified key and its associated value.   |
| `clear()`             | Clears all key-value pairs from the map.              |
| `removeWhere()`       | Removes all key-value pairs that satisfy a condition. |
| `addAll()`            | Adds all key-value pairs from another map.            |
| `forEach()`           | Applies a function to each key-value pair.            |
| `keys.toList()`       | Converts the keys to a list.                          |
| `values.toList()`     | Converts the values to a list.                        |

---

## 🎯 Conclusion

Maps in Dart provide a versatile way to store and manage key-value pairs efficiently. They allow fast lookups, updates, and deletions. Understanding how to manipulate Maps is crucial for organizing structured data in Dart applications.

Key Takeaways:
- **Maps** store data in key-value pairs.
- **Methods** like `putIfAbsent()`, `remove()`, `containsKey()`, and `clear()` help you work with Maps effectively.

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
