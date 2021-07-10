void main() {
  // class
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
}
