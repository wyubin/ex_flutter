void main() {
  var stringFoo = Foo<String>();
  print(stringFoo.toString());
  var booCat = Boo<Cat>();
  print(booCat.toString());
  List<String> listS = ["a", "b"];
  List<int> listI = [1, 2];
  print(first(listS));
  print(first(listI));
  // call
  Cat sCat = Cat("小貓");
  print(sCat());
}

// Generic class
class Foo<T> {
  String toString() => "Foo Instance of $T";
}

class Boo<T extends Pet> {
  String toString() => "Boo Instance of <$T>";
}

class Pet {
  String? name;
  String? type;
}

class Cat extends Pet {
  Cat(String name) {
    this.name = name;
    this.type = "Cat";
  }
  String call() {
    return '$name[$type]';
  }
}

// Generic function 應該比較常用到
/// 拿 List 的第一個值
T first<T>(List<T> ts) {
  T tmp = ts[0];
  return tmp;
}
