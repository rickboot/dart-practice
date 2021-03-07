import 'dart:io';

List<int> insertionSort(List<int> list) {


  return list;
}

void main() {
  print('Insertion sort: Enter numbers separated by commas:\n');
  List<String> chars = stdin.readLineSync().toString().split(","); 
  List<int> unlist = chars.map((char) => int.parse(char)).toList();

  print( insertionSort(unlist) );
}

