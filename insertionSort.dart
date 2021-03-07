import 'dart:io';

List<int> insertionSort(List<int> list) {
  for (int i = 0; i < list.length-1; i++) {
    for (int j = i+1; j < list.length; j++) {
      if (list[i] > list[j]) {
        int temp = list[j];
        list[j] = list[i];
        list[i] = temp;
      }
    }
  }
  return list;
}

void main() {
  print('Insertion sort: Enter numbers separated by commas:\n');

  List<String> chars = stdin.readLineSync().toString().split(","); 
  List<int> unlist = chars.map((char) => int.parse(char)).toList();

  print( insertionSort(unlist) );
}

