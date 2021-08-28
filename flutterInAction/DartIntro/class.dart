//classes
//syntactic sugar for Dart
class Animal {
  String name, type;
  
  Animal(this.name, this.type);
}

//instead of 
class OldAnimal {
  String name;                         
  String type;

  OldAnimal(String name, String type) {   
    this.name = name;                 
    this.type = type;
  }
}
class Cat extends Animal{

}
