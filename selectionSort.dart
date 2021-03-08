import 'dart:io';

List<num> selectionSort(List<num> list) {
  for (int i = 0; i < list.length-1; i++) {
    for (int j = i+1; j < list.length; j++) {
      if (list[i] > list[j]) {
        num temp = list[j];
        list[j] = list[i];
        list[i] = temp;
      }
    }
  }
  return list;
}

void main() {
  print('\nInsertion sort: Enter numbers separated by commas:\n');

  List<String> chars = stdin.readLineSync().toString().split(","); 
  List<num> unlist = chars.map((char) => num.parse(char)).toList();

  print( selectionSort(unlist) );
}

