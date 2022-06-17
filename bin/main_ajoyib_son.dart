import 'dart:math';

void main() {
  int count = 0;
  for(int i = 1; i <= 1000; i++){
    if(amazingNumber(i)){
      count++;
      print(i);
    }
  }
  print("result: $count");  // g'aroyib son

  int x = 8;
  int y = 9;
  int? son1, son2;
  int? sum1, sum2;

  if(x < y){
    son1 = (x + y) ~/ 2;
    son2 = (x * y) * 2;
    print("$son1 $son2");
  }
  if(x > y){
    sum1 = (x * y) * 2;
    sum2 = (x + y) ~/ 2;
    print("$sum1 $sum2");
  }
  if(x == y){
    print("$x $y");
  }
}

bool amazingNumber(int number){
  int temp = number;
  int sum = 0;

  // sonni raqamlarini ajratish
  while(temp > 0){
    sum += temp % 10;
    temp = temp ~/ 10;
  }

  sum = sum * sum; // sum = 81

  if(number % sum == 0){
    return true;
  } else{
    return false;
  }

}  // g'aroyib son
