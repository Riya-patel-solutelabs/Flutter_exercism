class DifferenceOfSquares {
  int squareOfSum(int num) {
    int sum = 0;
    for (var i = 1; i <= num; i++) {
      sum = sum + i;
    }
    return sum * sum;
  }

  int sumOfSquares(int num) {
    int sum = 0;
    for (var i = 1; i <= num; i++) {
      sum = sum + (i * i);
    }
    return sum;
  }

  int differenceOfSquares(int num) {
    var sumofsq = sumOfSquares(num);
    var sqofsum = squareOfSum(num);

    var diff = sqofsum - sumofsq;
    return diff;
  }
}
