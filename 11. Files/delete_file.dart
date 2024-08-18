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
