import 'dart:io';

void main() {
  // call method by passing a integer value to it
  print("Enter the number: ");
  int N = int.parse(stdin.readLineSync() ?? "0");
  if (checkSemiPrime(N) == 1) {
    print('$N is semi-prime number');
  } else {
    print('$N is not a semi-prime number');
  }
}

int checkSemiPrime(int num) {
  int cnt = 0;

  for (int i = 2; cnt < 2 && i * i <= num; ++i) {
    while (num % i == 0) {
      num = num ~/ i;
      ++cnt;
    }
  }

  if (num > 1) ++cnt;
  return cnt == 2 ? 1 : 0;
}
