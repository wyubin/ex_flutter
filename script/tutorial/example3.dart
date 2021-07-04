void main() {
  // class
}

class People {
  String name;
  String? age;
  String? _innerType;
  // non-named constructor
  People(this.name, this.age, this._innerType);
  // named constructor
  People.onlyName(String name) : this(name, null, null);
}
