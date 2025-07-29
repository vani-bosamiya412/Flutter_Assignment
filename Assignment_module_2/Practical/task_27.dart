// Write a function that simulates fetching multiple data points (e.g., list of users) asynchronously. Use await and async keywords to
// wait for each "data point" to load, then display all the data once loaded.

Future<String> user(String name) async {
  await Future.delayed(Duration(seconds: 2));
  return name;
}
void main() async {
  print("Fetching Users...");

  String user1 = await user("Vani");
  String user2 = await user("Dev");
  String user3 = await user("Payal");

  print("\nAll users loaded:");
  print(user1);
  print(user2);
  print(user3);
}