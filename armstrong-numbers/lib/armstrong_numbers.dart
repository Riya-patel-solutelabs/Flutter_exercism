import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(String number) {
    int temp, digits = 0, last = 0, sum = 0;

    temp = int.parse(number);

    if (temp == 0) {
      return true;
    }
// loop execute until temp is 0 and increment digits by 1 each loop
    while (temp > 0) {
      temp = temp ~/ 10;
      digits++;
    }
    //reset temp to user entered number
    temp = int.parse(number);
    //another loop for getting sum
    while (temp > 0) {
      last = temp % 10;
      sum = sum + pow(last, digits) as int;
      temp = temp ~/ 10;
    }

    return sum == number;
  }
}
