// Write a program that uses the spread operator to combine multiple lists into one list. Remove duplicates and sort the list in ascending
// order.

void main() {
  List<int> l1 = [3, 5, 7, 1];
  List<int> l2 = [1, 3, 5, 7];
  List<int> l3 = [2, 4, 8, 6];

  List<int> combinedList = [...l1,...l2,...l3];
  List<int> uniqueList = combinedList.toSet().toList();
  uniqueList.sort();
  print("Sorted List: $uniqueList");
}