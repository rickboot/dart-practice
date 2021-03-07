import 'dart:io';

List<int> bubbleSort(List<int> unsorted) {
  List<int> sorted = [...unsorted];
  int end = sorted.length-1;
  bool swapped = true;

  while (swapped) {
    swapped = false;
    for(var i = 0; i < end; i++) {
      if (sorted[i] > sorted[i+1]) {
        int temp = sorted[i];
        sorted[i] = sorted[i+1];
        sorted[i+1] = temp;
        swapped = true;
      }
    }
    end--;
  }
  return sorted;
}
void main() {
  print('Bubble sort: Enter numbers separated by commas:\n');
  List<String> chars = stdin.readLineSync().toString().split(","); 
  List<int> unsorted = chars.map((char) => int.parse(char)).toList();
  print( bubbleSort(unsorted) );
}

