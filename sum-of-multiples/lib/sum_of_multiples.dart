class SumOfMultiples {
  int sum(List<int> numlist, int num) {
    List<int> finalList = [];
    var seen = Set<int>();
    int sum = 0;

    for (var i = 0; i < numlist.length; i++) {
      if (num % numlist[i] == 0) {
        finalList.add(i);
      }
    }

    List<int> uniquelist =
        finalList.where((uniNum) => seen.add(uniNum)).toList();

    for (int items in uniquelist) {
      sum = sum + items;
    }
    return sum;
  }
}
