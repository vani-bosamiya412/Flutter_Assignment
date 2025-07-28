// Write a program to input a list of integers and sort them in ascending and descending order without using built-in sort methods.

ascendingSort(List<int> a) {
  for(int i = 0; i < a.length - 1; i++) {
    int min = i;
    for(int j = i + 1; j < a.length; j++) {
      if(a[j] < a[i]) {
        min = j;
      }
    }
    int tmp = a[i];
    a[i] = a[min];
    a[min] = tmp;
  }
  print("Ascending order: $a");
}
descendingSort(List<int> a) {
  for(int i = 0; i < a.length - 1; i++) {
    int max = i;
    for(int j = i + 1; j < a.length; j++) {
      if(a[j] > a[i]) {
        max = j;
      }
    }
    int tmp = a[i];
    a[i] = a[max];
    a[max] = tmp;
  }
  print("Descending order: $a");
}
void main() {
  List<int> l = [12, 4, 56, 70, 84, 1];
  ascendingSort(l);
  descendingSort(l);
}