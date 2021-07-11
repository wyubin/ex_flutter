import 'dart:async';

void main() {
  fDelay(4).then((val) => print(val)).catchError((err) => print(err));
  fDelay(3).then((val) => print(val));
  fInt()
      .then((val) => print(val + 3))
      .whenComplete(() => print('complete Future'));
  fAwait();
  // stream static method
  stream1.listen((event) {
    print('stream1:$event');
  });
  stream2.listen((event) => print('stream2:$event'));
  // stream3.listen((event) => print('stream3:$event'));
  sumStream(stream3).then((value) => print('sumStream:$value'));
  // StreamController
  StreamController<int> stream4C = StreamController();
  stream4C.sink.add(5);
  stream4C.sink.add(7);
  stream4C.stream.listen((event) => print('stream4C:$event'));
  // async*
  Stream<int> asyncStream() async* {
    for (int i = 8; i <= 9; i++) {
      yield i;
    }
  }

  asyncStream().listen((event) => print('asyncStream:$event'));
}

// Future
Future<int> fInt() {
  return Future.value(3);
}

Future<String> fDelay(int sec) {
  if (sec > 3) {
    return Future.error('Can not delay over 3 sec!');
  } else {
    return Future.delayed(
        Duration(seconds: sec), () => 'Delay response after $sec seconds');
  }
}

// async/await
void fAwait() async {
  await fDelay(2).then((value) => print('fAwait:$value'));
  await fDelay(1).then((value) => print('fAwait:$value'));
}

// stream static method
Stream stream1 =
    Stream.fromFuture(Future.delayed(Duration(seconds: 1), () => 2));
Stream stream2 = Stream.fromFutures(
    List<Future<int>>.generate(2, (index) => Future.value(index)));
Stream<int> stream3 =
    Stream.fromIterable(List<int>.generate(3, (index) => index * 2));
Future<int> sumStream(Stream<int> stream) async {
  int sum = 0;
  await for (int val in stream) {
    sum += val;
  }
  return sum;
}
