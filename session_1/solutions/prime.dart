import 'dart:io';

void main() {
  print("Enter the number of elements in array: ");
  int N = int.parse(stdin.readLineSync() ?? "0");
  List<int> arr = List.filled(N, 0);
  print("Enter the elements in array: ");
  for (int i = 0; i < N; i++) {
    arr[i] = int.parse(stdin.readLineSync() ?? "0");
  }
  int sum = 0;
  for (int i = 0; i < N; i++) {
    if (checkPrime(arr[i]) == 0) {
      sum += arr[i];
    }
  }
  if (checkPrime(sum) == 0) {
    print("Sum of prime elements is prime");
  } else {
    print("Sum of prime elements is not prime");
  }
}

int checkPrime(int num) {
  int i, m = 0, flag = 0;
  if (num == 1 || num == 0) {
    return 1;
  }

  m = num ~/ 2;
  for (i = 2; i <= m; i++) {
    if (num % i == 0) {
      flag = 1;
      return flag;
    }
  }
  return flag;
}
