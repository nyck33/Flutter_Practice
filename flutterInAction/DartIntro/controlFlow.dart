
void main(){
    caseStmt();
}

void caseStmt(){
  String animal = 'tiger';
  switch(animal) {
  case 'tiger':
      print("it's a tiger");
      continue alsoCat;
  case 'lion':
      print("it's a lion");
      continue alsoCat;
  alsoCat:
  case 'cat':
      print("it's a cat");
      break;
  default:
      print("not an animal?");
  }
}

void fallThrough(){
  int number = 1;
  switch(number) {
  case -1://-1 to -5 prints 'negative'
  case -2:
  case -3:
  case -4:
  case -5:
      print('negative!');
      break;
  case 1:
  case 2:
  case 3:
  case 4:
  case 5:
      print('positive!');
      break;
  case 0:
  default:
      print('zero!');
      break;
  }
}

//forEach loop, higher order func
///creates new scope, any value I can access is not
///accessible thereafter
///logic in forEach blocks can only provide side effects
///ie. cannot return values
///generally useful for mutating objects but not for creating new ones
void forEachLoop(){
  List<String>pets = ['dog', 'cat', 'fish']
  pets.forEach((pet) => pet.bark())
}
