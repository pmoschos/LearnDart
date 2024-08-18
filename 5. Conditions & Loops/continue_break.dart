void main() {
  for (int i = 0; i < 5; i++) {
    if (i == 3) {
      continue; // Skip the current iteration when i == 3
    }
    if (i == 4) {
      break; // Exit the loop when i == 4
    }
    print('i: $i');
  }
}
