import 'dart:io';

void main() {
  String filename = "D://abc.txt";
  String data = "Hello everyone! This is a simple text file.";

  try {
    var file = File(filename);
    file.writeAsStringSync(data);
    print("Data written to file: $filename");
  } catch(e) {
    print("Error writing to file.");
  }

  try{
    var file = File(filename);
    String content = file.readAsStringSync();
    print("Contents of the file:");
    print(content);
  } catch(e) {
    print("Error reading from file.");
  }
}