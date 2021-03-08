import 'dart:io';

List<num> insertionSort(List<num> list) {
  if (list.length < 2) return list;

  for (int i = 1; i < list.length; i++) {
    int curr = i;

    //! note that curr > 0 has to be first to prev out of bounds
    while (curr > 0 && list[curr] < list[curr-1]) {
      num temp = list[curr-1];
      list[curr-1] = list[curr];
      list[curr] = temp; 
      curr--;
    }
  }


  return list;
}

void main() {
  print('\nInsertion sort: Enter numbers separated by commas:\n');
  List<String> chars = stdin.readLineSync().toString().split(","); 
  List<num> unlist = chars.map((char) => num.parse(char)).toList();
  print( insertionSort(unlist) );
}