void main() {
  // class
  People a16 = People("a", "16");
  a16.name = "b";
  print(a16.age);
  a16.namePrint();
  // try profile
  print(a16.profile);
  a16.profile = 'c:18';
  a16.namePrint();
}

class People {
  late String name;
  String? age;
  String? _innerType;
  // non-named constructor
  People(this.name, this.age);
  // named constructor
  People.onlyName(String name) : this(name, null);
  People.kill(String name) {
    this.name = name;
    this._innerType = 'killer';
  }
  // method
  void namePrint() {
    print('my name is $name');
  }

  // get/set
  String get profile => '$name:$age';
  set profile(String val) {
    final values = val.split(':');
    name = values[0];
    age = values[1];
  }
}
