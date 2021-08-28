class Cat {
  String name;
  String _color;

  void meow() => print("meow");
  void _pur() => print("prrrrr");

  _pur();
  _color = "purple";
}

void main() {
  Cat nora = Cat();
}
