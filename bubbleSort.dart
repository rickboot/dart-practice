import 'dart:io';

List<int> bubbleSort(unsorted) {
  List<int> sorted = [...unsorted];
  int unsortedEnd = sorted.length-1;
  bool swapped = true;

  while (swapped) {
    swapped = false;
    for(var i = 0; i < unsortedEnd; i++) {
      if (sorted[i] > sorted[i+1]) {
        var temp = sorted[i];
        sorted[i] = sorted[i+1];
        sorted[i+1] = temp;
        swapped = true;
      }
    }
    unsortedEnd--;
  }
  return sorted;
}
void main() {
  print('Bubble sort: Enter numbers separated by commas:\n');
  List<String> chars = stdin.readLineSync().toString().split(","); 
  List<int> unsorted = chars.map((char) => int.parse(char)).toList();
  print( bubbleSort(unsorted) );
}

