
<p align="center">
  <img src="https://img.shields.io/badge/Dart-%230175C2.svg?logo=dart&logoColor=white" alt="Dart Badge" width="200"/>
</p>

# 🧑‍💻 Object-Oriented Programming (OOP) in Dart

Dart is an object-oriented programming language, which means it revolves around the concepts of **objects** and **classes**. OOP in Dart follows the four major principles: **Encapsulation**, **Abstraction**, **Inheritance**, and **Polymorphism**. These principles make it easier to manage and structure your code, especially in large projects.

## 📑 Table of Contents

1. [🔧 What is OOP?](#what-is-oop)
2. [🏗️ Class and Objects in Dart](#class-and-objects-in-dart)
3. [🏛️ Encapsulation in Dart](#encapsulation-in-dart)
4. [🌀 Abstraction in Dart](#abstraction-in-dart)
5. [♻️ Inheritance in Dart](#inheritance-in-dart)
6. [🔄 Polymorphism in Dart](#polymorphism-in-dart)
7. [🌟 Advantages of OOP in Dart](#advantages-of-oop-in-dart)

---

## 🔧 What is OOP?

Object-Oriented Programming (OOP) is a programming paradigm based on the concept of **objects**, which can contain data in the form of fields (properties) and code in the form of methods (functions). Dart, being an OOP language, provides a powerful way to model real-world entities in code through classes and objects.

### Key OOP Concepts in Dart:

- **Class**: A blueprint for creating objects. It defines properties (data) and methods (behavior) that the objects created from the class can have.
- **Object**: An instance of a class. It is a concrete entity created using the class's blueprint.
- **Encapsulation**: Bundling the data (attributes) and methods (functions) that operate on the data into a single unit or class.
- **Abstraction**: Hiding complex implementation details and exposing only the necessary functionality to the user.
- **Inheritance**: The process by which one class can inherit properties and methods from another class, promoting code reuse.
- **Polymorphism**: The ability to present the same interface for differing underlying data types. It allows one interface to be used for different types of objects.

---

## 🏗️ Class and Objects in Dart

In Dart, classes are defined using the `class` keyword, and objects are created as instances of these classes. A class defines the structure and behavior (via properties and methods) that the objects will possess.

\`\`\`dart
class Car {
  String model;
  int year;

  Car(this.model, this.year);

  void displayInfo() {
    print('Model: \$model, Year: \$year');
  }
}

void main() {
  Car myCar = Car('Tesla Model S', 2022);
  myCar.displayInfo();
}
\`\`\`

This simple example defines a `Car` class with two properties (`model` and `year`) and a method (`displayInfo`). The `myCar` object is an instance of the `Car` class, and it can invoke the `displayInfo` method.

---

## 🏛️ Encapsulation in Dart

**Encapsulation** is the mechanism of restricting direct access to some of an object’s components and protecting the integrity of the data. In Dart, encapsulation is achieved by using access modifiers such as the underscore (`_`) to make class members private.

\`\`\`dart
class BankAccount {
  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);

  void deposit(double amount) {
    _balance += amount;
  }

  double get balance => _balance; // Public getter for balance
}
\`\`\`

Here, the `_accountNumber` and `_balance` fields are private, meaning they can only be accessed within the class. However, the `balance` can be retrieved using a public getter method, ensuring controlled access.

---

## 🌀 Abstraction in Dart

**Abstraction** is the concept of hiding the complex details of how something works while exposing a simplified interface to the user. This is particularly useful in large applications, where reducing complexity is critical.

In Dart, abstraction can be achieved through **abstract classes** or **interfaces**. An abstract class provides a base class with method declarations that must be implemented by subclasses.

\`\`\`dart
abstract class Shape {
  void draw();  // Abstract method

  double area(); // Abstract method
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  void draw() {
    print('Drawing a circle');
  }

  @override
  double area() => 3.14 * radius * radius;
}

void main() {
  Shape shape = Circle(5);
  shape.draw();
  print('Area: \${shape.area()}');
}
\`\`\`

In the example above, the `Shape` class is abstract and defines methods without implementation. The `Circle` class extends `Shape` and provides concrete implementations for the abstract methods.

---

## ♻️ Inheritance in Dart

**Inheritance** allows a class to inherit properties and methods from another class, promoting reusability and reducing code duplication. The class that is inherited from is called the **superclass**, and the class that inherits is called the **subclass**.

\`\`\`dart
class Vehicle {
  void startEngine() {
    print('Engine started');
  }
}

class Car extends Vehicle {
  void drive() {
    print('Car is moving');
  }
}

void main() {
  Car myCar = Car();
  myCar.startEngine(); // Method inherited from Vehicle
  myCar.drive();
}
\`\`\`

In this example, the `Car` class inherits the `startEngine` method from the `Vehicle` class and adds its own method, `drive`.

---

## 🔄 Polymorphism in Dart

**Polymorphism** allows objects of different types to be treated as instances of the same class through a common interface. This makes it possible to write more generic and flexible code.

\`\`\`dart
class Animal {
  void sound() {
    print('Animal sound');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Bark');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print('Meow');
  }
}

void main() {
  Animal myDog = Dog();
  Animal myCat = Cat();

  myDog.sound(); // Output: Bark
  myCat.sound(); // Output: Meow
}
\`\`\`

Here, both `Dog` and `Cat` override the `sound` method from the `Animal` class, providing their specific implementations. However, they can still be referred to by the `Animal` type, demonstrating polymorphism.

---

## 🌟 Advantages of OOP in Dart

Object-Oriented Programming provides numerous benefits that help developers manage and scale their codebases efficiently. Some of the key advantages include:

- **Code Reusability**: Inheritance allows classes to reuse code from parent classes, reducing redundancy.
- **Modularity**: Code can be split into modular, self-contained classes, making it easier to manage and maintain.
- **Scalability**: OOP's structure supports the growth of applications, as new features can be added with minimal changes to existing code.
- **Encapsulation**: Protects data integrity by controlling access to properties through methods and access modifiers.
- **Maintainability**: Well-structured classes lead to more maintainable code. Errors are easier to isolate, and modifications can be made without affecting other parts of the program.
- **Abstraction**: Simplifies complex systems by hiding unnecessary details from the user, enabling them to focus on the core logic.
- **Polymorphism**: Increases flexibility by allowing different classes to be treated through a unified interface, reducing code duplication.

---

## 🎯 Conclusion

OOP in Dart helps you structure code into modular, reusable components, making your applications more scalable, maintainable, and easier to understand. By leveraging key principles like **Encapsulation**, **Abstraction**, **Inheritance**, and **Polymorphism**, you can create more efficient and robust applications.

In the next sections, we will explore how these concepts are applied in real-world scenarios using Dart and dive into advanced topics that will help you master object-oriented programming.

---

## 📢 Stay Updated

Be sure to ⭐ this repository to stay updated with new Dart programming guides and examples!

## 📄 License

🔐 This project is protected under the [MIT License](https://mit-license.org/).

## 📧 Contact

Panagiotis Moschos - pan.moschos86@gmail.com

---

<h1 align="center">Happy Coding 👨‍💻</h1>

<p align="center">
  Made with ❤️ by Panagiotis Moschos (https://github.com/pmoschos)
</p>
