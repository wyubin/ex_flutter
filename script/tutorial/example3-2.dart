void main() {
  Cat f = Cat('花花');
  f.speak();
  PetLikeCat h = PetLikeCat('小華');
  h.speak();
  SmallPet m = SmallPet();
  m.speak();
  print(m.name);
  print(SmallPet.size);
  SmallPet.checkSize();
  var noHomeCat = NoHome();
  print(noHomeCat.name);
}

/// 基本寵物 class
abstract class Pet {
  String? name;
  int? age;
  String _call = 'hello~';

  Pet(this.name, this.age);
  void speak() {
    print(_call);
  }
}

/// 貓模型大便
class Cat extends Pet {
  String _call = 'mao~';
  Cat(String name) : super(name, null);
  void speak() {
    print(_call * 2);
  }
}

// mixin
/// mao 能力
mixin Mao {
  void speak() {
    print('mao~mao~mao~');
  }
}

class PetLikeCat extends Pet with Mao {
  PetLikeCat(String name) : super(name, null);
}

// static
class SmallPet extends PetLikeCat {
  static String size = '很小';
  SmallPet() : super('小貓');
  static void checkSize() {
    print('身體大小: $size');
  }
}

// implements
class NoHome implements Cat {
  String? name = 'noName';
  int? age;
  String _call = 'maoooo~';
  void speak() {
    print(_call * 3);
  }
}
