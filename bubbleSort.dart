void main() {
 
  List<int> arr = [3,2,-1,2,0,7,11,4];
 
  bool swapped = true;
  int unsorted = arr.length - 1;
  while (swapped) {
    swapped = false;
    for(var i = 0; i < unsorted; i++) {
      if (arr[i] > arr[i+1]) {
        var temp = arr[i];
        arr[i] = arr[i+1];
        arr[i+1] = temp;
        swapped = true;
      }
    }
    unsorted--;
  }

  print(arr);
 
}

