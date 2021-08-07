import 'package:lib_root/src/base1.dart';
import 'package:test/test.dart';

void main() {
  group('all test', () {
    test('first test', () {
      Sample a = Sample();
      expect(a.isGood, true);
    });
    test('second test', () {
      Sample a = Sample();
      expect(a.isGood, true);
    });
  });
}
