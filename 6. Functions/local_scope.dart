void main() {
  int localVar = 20;

  void printLocal() {
    print(localVar); // Accessible here
  }

  printLocal(); // Output: 20

  // print(globalVar);  // Error: Not accessible here
}
