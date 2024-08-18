
<p align="center">
  <img src="https://img.shields.io/badge/Dart-%230175C2.svg?logo=dart&logoColor=white" alt="Dart Badge" width="200"/>
</p>

# 📄 CRUD Operations with Files in Dart

File handling is an important aspect of any application that needs to persist data. Dart provides a built-in `dart:io` library for handling files and directories in the file system. In this guide, we'll cover how to perform basic CRUD (Create, Read, Update, Delete) operations using Dart.

## 📑 Table of Contents

1. [🔧 File System Basics](#file-system-basics)
2. [📄 Creating and Writing Files](#creating-and-writing-files)
3. [📖 Reading Files](#reading-files)
4. [🔄 Updating Files](#updating-files)
5. [❌ Deleting Files](#deleting-files)
6. [🎯 Complete CRUD Example](#complete-crud-example)
7. [🔨 File and Directory Methods in Dart](#file-and-directory-methods-in-dart)

---

## 🔧 File System Basics

Dart's `dart:io` library provides classes such as `File`, `Directory`, and `RandomAccessFile` to handle file operations. You'll need to import this library to work with files:

```dart
import 'dart:io';
```

---

## 📄 Creating and Writing Files

To create and write to a file in Dart, you can use the `File` class. There are multiple ways to write to a file:

1. **writeAsString()**: Writes a string to a file.
2. **writeAsBytes()**: Writes a list of bytes to a file.

### Example: Writing a String to a File

```dart
import 'dart:io';

void main() async {
  final file = File('example.txt');

  // Write some content to the file
  await file.writeAsString('Hello, Dart! This is a CRUD operation example.');

  print('File written successfully.');
}
```

### Explanation:

- The `writeAsString()` method creates the file if it does not exist and writes the provided string to it.
- If the file already exists, the content will be overwritten unless you specify the mode as `FileMode.append`.

---

## 📖 Reading Files

You can read files in Dart using the `readAsString()` or `readAsBytes()` methods. These methods return the file content as a string or a list of bytes, respectively.

### Example: Reading the Content of a File

```dart
import 'dart:io';

void main() async {
  final file = File('example.txt');

  // Read the content of the file
  String content = await file.readAsString();

  print('File content: $content');
}
```

### Explanation:

- `readAsString()` reads the entire content of the file as a string.
- Make sure the file exists before attempting to read it to avoid exceptions.

---

## 🔄 Updating Files

To update an existing file in Dart, you can either overwrite it or append new content. The `writeAsString()` method allows you to specify the mode (overwrite or append).

### Example: Appending Content to a File

```dart
import 'dart:io';

void main() async {
  final file = File('example.txt');

  // Append new content to the file
  await file.writeAsString('
This line was added later.', mode: FileMode.append);

  print('File updated successfully.');
}
```

### Explanation:

- By specifying `FileMode.append`, the content will be added to the existing content of the file rather than overwriting it.

---

## ❌ Deleting Files

To delete a file in Dart, you can use the `delete()` method from the `File` class.

### Example: Deleting a File

```dart
import 'dart:io';

void main() async {
  final file = File('example.txt');

  // Check if the file exists
  if (await file.exists()) {
    // Delete the file
    await file.delete();
    print('File deleted successfully.');
  } else {
    print('File does not exist.');
  }
}
```

### Explanation:

- The `delete()` method removes the file from the file system.
- Always check if the file exists before attempting to delete it.

---

## 🎯 Complete CRUD Example

Here’s a complete CRUD example that demonstrates creating, reading, updating, and deleting a file in Dart:

```dart
import 'dart:io';

void main() async {
  final file = File('example.txt');

  // Create/Write
  await file.writeAsString('Initial content of the file.');
  print('File created and written successfully.');

  // Read
  String content = await file.readAsString();
  print('File content: $content');

  // Update
  await file.writeAsString('
Appended content.', mode: FileMode.append);
  print('File updated successfully.');

  // Read updated content
  String updatedContent = await file.readAsString();
  print('Updated file content: $updatedContent');

  // Delete
  if (await file.exists()) {
    await file.delete();
    print('File deleted successfully.');
  }
}
```

### Explanation:

1. **Create/Write**: We create a new file and write some content to it.
2. **Read**: We read the content of the file.
3. **Update**: We append new content to the file.
4. **Delete**: We delete the file after checking if it exists.

---

## 🔨 File and Directory Methods in Dart

Here are some useful file and directory methods in Dart:

### File Methods

| Method               | Description                                            |
|----------------------|--------------------------------------------------------|
| `exists()`           | Checks if the file exists.                             |
| `create()`           | Creates a new file.                                    |
| `delete()`           | Deletes the file.                                      |
| `rename(newPath)`    | Renames or moves the file.                             |
| `writeAsString()`    | Writes a string to the file.                           |
| `readAsString()`     | Reads the content of the file as a string.             |
| `writeAsBytes()`     | Writes a list of bytes to the file.                    |
| `readAsBytes()`      | Reads the content of the file as bytes.                |
| `open()`             | Opens the file for random access operations.           |

### Directory Methods

| Method               | Description                                            |
|----------------------|--------------------------------------------------------|
| `exists()`           | Checks if the directory exists.                        |
| `create()`           | Creates a new directory.                               |
| `delete()`           | Deletes the directory.                                 |
| `list()`             | Lists the files and directories inside a directory.    |
| `rename(newPath)`    | Renames or moves the directory.                        |

---

## 🎯 Conclusion

Working with files in Dart is straightforward and efficient using the `dart:io` library. You can perform all basic CRUD operations with files, and Dart provides various methods to manage both files and directories.

Make sure to handle file exceptions properly in a production environment to avoid unexpected crashes.

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
