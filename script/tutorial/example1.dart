void main() {
  var a = 1; //int 整數
  String b = "1"; // String 字串
  dynamic c = 1.1; // double 浮點數

  if (a is int) {
    print('a is int'); // Output： a is int
  }
  if (b is String) {
    print('b is String'); // Output： b is String
  }
  if (c is double) {
    print('c is double'); // Output： c is double
  }
  c = "1.2";
  if (c is String) {
    print('c change to String'); // Output： c is double
  }

  // List
  List<double> listA = [1, 1.2];
  print(listA[1]);
  listA.add(3);
  List<dynamic> listB = const [1, '2'];
  print(listB);
  //listB.add(1); // err

  // map
  Map<String, int> mapA = {'a': 1, "b": 2};
  print(mapA);

  // function
  print(birth('Yubin', 6, 11));
  print(today(6, 10));

  // Anonymous Function
  listA.forEach((e) => print("item is $e"));
}

// function
String birth(String name, int month, int day) {
  return "${name}'s birthday is $month/$day.";
}

String today(int month, int day) => "Today is $month/$day.";
