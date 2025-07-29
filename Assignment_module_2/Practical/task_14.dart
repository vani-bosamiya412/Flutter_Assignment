// Create a program that takes a list of words and removes any duplicates. Use a set to eliminate duplicates, then display the unique
// words in alphabetical order.

void main() {
  List<String> words = [
    "Banana",
    "Orange",
    "Apple",
    "Kiwi",
    "Grape",
    "Banana",
    "Kiwi"
  ];
  
  print("Original list of words: $words");

  Set<String> uniqueWordsSet = words.toSet();
  List<String> uniquesWordList = uniqueWordsSet.toList();
  uniquesWordList.sort();
  
  print("Unique words in alphabetically order: $uniquesWordList");
}