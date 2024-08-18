
<p align="center">
  <img src="https://img.shields.io/badge/Dart-%230175C2.svg?logo=dart&logoColor=white" alt="Dart Badge" width="200"/>
</p>

# 📚 Collections in Dart

Collections in Dart are versatile data structures that allow you to store and manage multiple values. They are essential for handling dynamic data, and Dart provides powerful collection types like **List**, **Set**, and **Map**. We will also cover the `where` method for filtering collections based on conditions.

## 📑 Table of Contents

1. [📋 List in Dart](#list-in-dart)
2. [📜 Set in Dart](#set-in-dart)
3. [🗺️ Map in Dart](#map-in-dart)
4. [🔍 Where Method in Dart](#where-method-in-dart)

---

## 📋 1. List in Dart

A **List** is an ordered collection of elements in Dart. Lists are zero-indexed, which means the first element starts at index `0`. Dart provides both **fixed-length** and **growable** lists.

### Syntax:
```dart
List<ElementType> listName = [elements];
```

### Example:
```dart
void main() {
  List<int> numbers = [1, 2, 3, 4, 5];  // Growable list
  
  print(numbers[0]);  // Access first element, Output: 1
  print(numbers.length);  // Output: 5

  numbers.add(6);  // Adding element to the list
  print(numbers);  // Output: [1, 2, 3, 4, 5, 6]
}
```

### Explanation:
- **Growable List**: The list grows dynamically as you add more elements using the `add()` method.
- Lists are ordered and maintain the order in which elements were added.

### Important Methods:
- **`add()`**: Adds a single element to the list.
- **`remove()`**: Removes the first occurrence of a specific element.
- **`indexOf()`**: Finds the index of the first occurrence of an element.

### Example of Methods:
```dart
void main() {
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  
  fruits.add('Orange');
  print(fruits);  // Output: [Apple, Banana, Cherry, Orange]
  
  fruits.remove('Banana');
  print(fruits);  // Output: [Apple, Cherry, Orange]
  
  print(fruits.indexOf('Cherry'));  // Output: 1
}
```

---

## 📜 2. Set in Dart

A **Set** is an unordered collection of unique elements. Sets do not allow duplicate values and are ideal when you need to ensure that a collection contains only distinct items.

### Syntax:
```dart
Set<ElementType> setName = {elements};
```

### Example:
```dart
void main() {
  Set<int> uniqueNumbers = {1, 2, 3, 4, 5};

  uniqueNumbers.add(3);  // Attempt to add duplicate element
  print(uniqueNumbers);  // Output: {1, 2, 3, 4, 5} (No duplicates)

  uniqueNumbers.add(6);  // Add a new unique element
  print(uniqueNumbers);  // Output: {1, 2, 3, 4, 5, 6}
}
```

### Explanation:
- **No Duplicates**: The set automatically ignores duplicate elements.
- **Unordered**: The elements in the set do not maintain any particular order.

### Important Methods:
- **`add()`**: Adds an element to the set if it is not already present.
- **`contains()`**: Checks if an element is present in the set.
- **`remove()`**: Removes a specific element from the set.

### Example of Methods:
```dart
void main() {
  Set<String> colors = {'Red', 'Green', 'Blue'};
  
  print(colors.contains('Green'));  // Output: true
  
  colors.remove('Blue');
  print(colors);  // Output: {Red, Green}
}
```

---

## 🗺️ 3. Map in Dart

A **Map** is an unordered collection of key-value pairs. Each key is unique, and the associated value can be accessed via the key. Maps are perfect for storing and retrieving data using identifiers.

### Syntax:
```dart
Map<KeyType, ValueType> mapName = {key1: value1, key2: value2};
```

### Example:
```dart
void main() {
  Map<String, int> phoneBook = {
    'Alice': 12345,
    'Bob': 67890,
    'Charlie': 54321
  };

  print(phoneBook['Alice']);  // Output: 12345
  
  phoneBook['David'] = 11111;  // Add a new key-value pair
  print(phoneBook);  // Output: {Alice: 12345, Bob: 67890, Charlie: 54321, David: 11111}
}
```

### Explanation:
- **Key-Value Pairs**: Each entry in the map is a pair of keys and values.
- **Unique Keys**: Each key in a map must be unique.

### Important Methods:
- **`putIfAbsent()`**: Adds a key-value pair only if the key is not already present.
- **`remove()`**: Removes a key and its associated value.
- **`containsKey()`**: Checks if a specific key exists in the map.

### Example of Methods:
```dart
void main() {
  Map<String, String> countries = {
    'US': 'United States',
    'DE': 'Germany',
    'IN': 'India'
  };

  print(countries.containsKey('DE'));  // Output: true
  
  countries.remove('IN');
  print(countries);  // Output: {US: United States, DE: Germany}
  
  countries.putIfAbsent('JP', () => 'Japan');
  print(countries);  // Output: {US: United States, DE: Germany, JP: Japan}
}
```

## 🔍 4. Where Method in Dart

The **`where`** method in Dart is used to filter elements in a collection based on a condition. It returns a new collection containing only the elements that satisfy the given condition. The `where` method is most commonly used with lists, sets, or other iterable collections.

### Syntax:
```dart
Iterable<T> where(bool Function(T element) test)
```

### Example:
```dart
void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6];

  // Using where to filter numbers greater than 3
  Iterable<int> filteredNumbers = numbers.where((number) => number > 3);
  print(filteredNumbers.toList());  // Output: [4, 5, 6]
}
```

### Explanation:
- The `where` method takes a function as an argument. This function must return a boolean value (`true` or `false`) for each element in the collection.
- If the function returns `true`, the element is included in the new collection; otherwise, it is excluded.

### Use Case: Filtering Strings
You can use the `where` method to filter strings in a collection based on length, characters, or other conditions.

### Example:
```dart
void main() {
  List<String> names = ['Alice', 'Bob', 'Charlie', 'Dave'];

  // Filtering names with more than 3 letters
  Iterable<String> longNames = names.where((name) => name.length > 3);
  print(longNames.toList());  // Output: [Alice, Charlie, Dave]
}
```

### Explanation:
- In this example, the `where` method filters out names that are shorter than or equal to 3 characters.

### Combining Where with Other Methods
You can chain the `where` method with other collection methods like `map`, `reduce`, etc., to perform complex operations.

### Example:
```dart
void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6];

  // Filtering and transforming the numbers
  Iterable<int> evenSquares = numbers
      .where((number) => number % 2 == 0)
      .map((number) => number * number);
  
  print(evenSquares.toList());  // Output: [4, 16, 36]
}
```

### Explanation:
- In this example, the `where` method filters out odd numbers, and then the `map` method squares each of the even numbers.

---

## 🎯 Summary

In Dart, collections such as **List**, **Set**, and **Map** are fundamental tools for organizing and managing data. The **`where`** method allows you to filter data efficiently based on conditions, making it a powerful tool for working with collections.

Here's a quick recap:
- **📋 List**: An ordered collection of elements.
- **📜 Set**: An unordered collection of unique elements.
- **🗺️ Map**: A collection of key-value pairs.
- **🔍 Where Method**: A method for filtering elements in a collection based on a condition.

By mastering these concepts, you'll be able to work with complex data structures in Dart more effectively.

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
