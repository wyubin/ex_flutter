void main() {
  final myStrings = MyStrings(['How', 'Are', 'You']);
  for (final str in myStrings) {
    print(str);
  }
  myStrings.forEach((value) => print('forEach:$value'));
  // Iterable by sync*
  getRange(0, 4).forEach((e) => print('sync*1:$e'));
  // Stream by async
  fetchStrings(0, 2).listen((e) => print('async*1:$e'));
}

// Iterable
class MyStrings extends Iterable<String> {
  MyStrings(this.strings);
  final List<String> strings;

  Iterator<String> get iterator => strings.iterator;
}

// Iterable by sync*
Iterable<String> getRange(int start, int finish) sync* {
  for (int i = start; i <= finish; i++) {
    yield "${i * 2}";
  }
}

// Stream by async
Stream<String> fetchStrings(int start, int finish) async* {
  for (int i = start; i <= finish; i++) {
    yield await "${i * 2}";
  }
}
