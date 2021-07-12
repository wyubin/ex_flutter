void main() {
  String intStr = '11';
  print('字串轉數字(toInt):${intStr.toInt()}');
  print('字串轉數字(IntegerParse):${IntegerParse('12').toInt()}');
}

// extension
extension IntegerParse on String {
  int toInt() {
    return int.parse(this);
  }
}
