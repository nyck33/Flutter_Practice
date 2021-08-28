///
import 'dart: meta';

void main() {
  String name = "Nobu";
  namedParamGreeting(name);
  namedParamGreeting(name, lineNum: 33);
  addSomeNums(5, 4);
  addSomeNums(5, 4, 3);
  List<int> nums = [1, 2, 3];
  nums.forEach(addOneAndPrint);
  //map is also higher order, here multiply
  Iterable<int> biggerNums = nums.map((int n) => n * 2);
}

String makeGreeting(String name) {
  return "Hello, $name";
}

String shorthandGreeting(String name) => "Hello, $name";

String namedParamGreeting(String name, {@required int lineNum}) {}

//positional optional parameters
int addSomeNums(int x, int y, [int z = 5]) {
  int sum = x + y;
  if (z != null) {
    sum += z;
  }
  return sum;
}

//forEach higher order, takes func as args or returns funcs, here print
void addOneAndPrint(int num) {
  print(num++);
}
