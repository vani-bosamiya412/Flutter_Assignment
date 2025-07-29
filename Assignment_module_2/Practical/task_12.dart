// Create a function that accepts a list of numbers and returns the largest and smallest numbers in the list.

findMinMax(List<int> list) {
  if(list.isEmpty) {
    print("List is empty.");
    return [0,0];
  } else {
    int min = list[0];
    int max = list[0];

    for(int i = 0; i < list.length; i++) {
      if(list[i] < min) {
        min = list[i];
      }
      if(list[i] > max) {
        max = list[i];
      }
    }
    print("Smallest number in the list is $min");
    print("Largest number in the list is $max");
  }
}
void main() {
  List<int> num = [12, 4, 30, 56, 78, 90, 2];
  findMinMax(num);
}