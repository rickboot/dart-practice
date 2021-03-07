import 'dart:io';

List<int> bubbleSort(List<int> list) {
  int end = list.length-1;
  bool unsorted = true;

  while (unsorted) {
    unsorted = false;
    for(var i = 0; i < end; i++) {
      if (list[i] > list[i+1]) {
        int temp = list[i];
        list[i] = list[i+1];
        list[i+1] = temp;
        unsorted = true;
      }
    }
    end--;
  }
  return list;
}

void main() {
  print('Bubble sort: Enter numbers separated by commas:\n');
  List<String> chars = stdin.readLineSync().toString().split(","); 
  List<int> unlist = chars.map((char) => int.parse(char)).toList();
  print( bubbleSort(unlist) );
}

