void main() {
  Set<String> movies = {"Inception", "Matrix", "Interstellar"};

  // Adding elements
  movies.add("Dune");
  print(movies); // Output: {Inception, Matrix, Interstellar, Dune}

  // Removing elements
  movies.remove("Matrix");
  print(movies); // Output: {Inception, Interstellar, Dune}
}
