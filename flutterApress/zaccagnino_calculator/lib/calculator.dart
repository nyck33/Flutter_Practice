class Calculation {
  List<String> a = [];
  String savedCalc = "";

  //check for operators
  final RegExp regExp = RegExp('[-+*\\/]');

  void add(String added) {
    if (a.isEmpty) {
      //if empty only add if not operator
      if (!regExp.hasMatch(added)) {
        a.add(added);
      }
    } else if (regExp.hasMatch(a.last)) {
      //if prev last is operator
      if (!RegExp('[-+*\\/]').hasMatch(added)) {
        //new is not opertor
        //add operand as new list element
        a.add(added);
      }
    } else {
      //prev last is digit
      if (regExp.hasMatch(added)) {
        //operator is being added
        if (!RegExp(".").hasMatch(a.last)) a.last += ".0";
        //if no decimal in last string
        //a.last += ".0"; //complete the last string operand as double
        a.add(added); //add operator to next idx
      } else {
        //operand digit being added after a decimal pt in last entry
        a.last += added;
      }
    }
  }

  void deleteAll() => a = [];

  void deleteOne() {
    if (a.length > 0) {
      if (a.last.length > 1) {
        //only remove last char
        a.last = a.last.substring(0, a.last.length - 1);
      } else {
        //last operand or operator substring is only one char so remove all
        a.removeLast();
      }
    }
  }

  String saveCalculation(){
    //func here to call Flask API to save to RDS
    return "";
  }

  double getResult() {
    //clean up input a's last element
    if (regExp.hasMatch(a.last)) {
      //last is operator
      a.removeLast();
    }
    if (a.lastIndexOf(".") == a.last.length - 1)
      a.last =
          a.last.substring(0, a.last.length - 1); //substring skip last decpt

    //operations
    for (int i = 0; i < a.length; i++) {
      if (a[i] == "*") {
        a[i - 1] = "${double.parse(a[i - 1]) * double.parse(a[i + 1])}";
        a.removeAt(i);
        a.removeAt(i);
        i--;
      } else if (a[i] == "/") {
        if(double.parse(a[i+1])== 0)
          throw DivideByZeroException();
        a[i - 1] = "${double.parse(a[i - 1]) / double.parse(a[i + 1])}";
        a.removeAt(i);
        a.removeAt(i);
        i--;
      } else if (a[i] == "+") {
        a[i - 1] = "${double.parse(a[i - 1]) + double.parse(a[i + 1])}";
        a.removeAt(i);
        a.removeAt(i);
        i--;
      } else if (a[i] == "-") {
        a[i - 1] = "${double.parse(a[i - 1]) - double.parse(a[i + 1])}";
        a.removeAt(i);
        a.removeAt(i);
        i--;
      }
    }
    if (a.length != 1) throw Error();

    return double.parse(a[0]);
  }

  String getString() {
    String str = "";
    //for (var op in a) {
    //str+=op;
    //}
    a.forEach((String element) {
      str += element;
    });
    return str;
  }
}

class DivideByZeroException implements Exception{

}