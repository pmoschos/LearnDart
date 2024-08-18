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
  await file.writeAsString('Appended content.', mode: FileMode.append);
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
