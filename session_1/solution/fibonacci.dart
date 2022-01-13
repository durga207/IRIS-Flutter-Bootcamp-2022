import 'dart:io';

int fibonacci(int n) => n <= 2 ? 1 : fibonacci(n - 2) + fibonacci (n - 1);
main() {
  String output = "";
  print("Enter the number of Fibonacci numbers: ");
  int N = int.parse(stdin.readLineSync() ?? "0");
  for (int i = 1; i <= N; ++i) {
    output += fibonacci(i).toString() + ", ";
  }
  print(output);
}