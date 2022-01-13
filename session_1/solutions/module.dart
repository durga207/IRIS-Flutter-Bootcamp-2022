import 'dart:io';

void main() {
  print("Enter type of user 1.Admin 2.Student");
  int N = int.parse(stdin.readLineSync() ?? "0");
  if (N == 1) {
    print("Enter course type 1.Open elective 2.Branch elective");
    int k = int.parse(stdin.readLineSync() ?? "0");
    if (k == 1) {
      print("Enter course name and code");
      String? course = stdin.readLineSync();
    } else {
      print("Enter branch and year");
      String? branch = stdin.readLineSync();
      print("Enter course name and code");
      String? course = stdin.readLineSync();
    }
  }else{
    print("Enter branch and year");
    String? k = stdin.readLineSync();
    var lst = k!.split(" ");
    print("<List of open electives>\nDiscrete Math ma111\nBitcoin bc110");
    print("<List of branch electives>\ncourse1 ${lst[0]}110\ncourse2 ${lst[0]}111");

  }
}
