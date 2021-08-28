//lexically scoped
String topLevel = "Hello";

void firstFunction() {
  String secondLevel = "HI";
  print(topLevel);
  print(secondLevel);
  nestedFunction() {
    String thirdLevel = "Howdy";
    print(topLevel);
    print(secondLevel);
    innerNestedFunction() {
      print(topLevel);
      print(secondLevel);
      print(thirdLevel);
    }

    print(thirdLevel);
  }
}

void main() => firstFunction();
