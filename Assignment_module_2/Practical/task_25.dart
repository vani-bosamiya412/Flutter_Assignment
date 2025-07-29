// Write a program that simulates a delayed operation using Future.delayed. Display a loading message, wait for 3 seconds, and then
// show a completion message.

void main() {
  print("Loading... Please wait");
  Future.delayed(Duration(seconds: 3), () {
    print("Process completed.");
  });
}