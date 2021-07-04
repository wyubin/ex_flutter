void main() {
  // if-else
  int a = 5;
  if (a > 10) {
    print("a>10");
  } else if (a <= 10 && a >= 0) {
    print("a在0與10之間");
  } else {
    print("a<0");
  }
  // Ternary
  String ckString = a >= 20 ? "a大於20" : "a未滿20";
  print("ckString:$ckString");
  // for loop
  for (var i = 0; i < 3; i++) {
    print("Current value is $i.");
  }
  // for loop in list
  List<int> listA = [3, 4, 5];
  for (var i in listA) {
    print("Current value is $i.");
  }
  // while
  while (a < 8) {
    a++;
    print("Current value is $a.");
  }
  // switch
  switch (a < 9) {
    case true:
      print('a<9');
      break;
    case false:
      print('a>=9');
      break;
  }
}
