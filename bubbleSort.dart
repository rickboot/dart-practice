import 'dart:io';

List<num> bubbleSort(List<num> list) {
  int end = list.length-1;
  bool unsorted = true;

  while (unsorted) {
    unsorted = false;
    for(int i = 0; i < end; i++) {
      if (list[i] > list[i+1]) {
        num temp = list[i];
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
  print('\nBubble sort: Enter numbers separated by commas:\n');
  List<String> chars = stdin.readLineSync().toString().split(","); 
  List<num> unlist = chars.map((char) => num.parse(char)).toList();
  print( bubbleSort(unlist) );
}

