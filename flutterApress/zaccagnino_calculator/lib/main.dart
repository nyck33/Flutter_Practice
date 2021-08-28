import 'package:flutter/material.dart';
import 'package:zaccagnino_calculator/calculator.dart';

class ExpandedButton extends StatelessWidget {
  ExpandedButton(
      {required this.onPressed,
      required this.style,
      required this.child,
      required this.color});

  final Widget child;

  //final TextStyle style;
  final ButtonStyle style;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) => Expanded(
        flex: 1,
        child: TextButton(
          onPressed: onPressed,
          child: child,
          //style: TextButton.styleFrom(textStyle: style, primary: color),
          style: style,
        ),
      );
}

class ExpandedRow extends StatelessWidget {
  ExpandedRow({required this.children, required this.crossAxisAlignment});

  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) => Expanded(
        flex: 1,
        child: Row(
          children: children,
          crossAxisAlignment: crossAxisAlignment,
        ),
      );
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      theme: ThemeData(
          primarySwatch: Colors.blue, backgroundColor: Colors.black26),
      home: CalculatorHomePage(title: 'Flutter Calculator'),
    );
  }
}

class CalculatorHomePage extends StatefulWidget {
  CalculatorHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CalculatorHomePageState createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  String _str = "0";
  String _savedExpression = "";
  var _calculation = Calculation();
  ButtonStyle numButStyle = ButtonStyle(
    //87 is black, transparency for black and white only
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
  );

  void add(String a) {
    setState(() {
      _calculation.add(a);
      _str = _calculation.getString();
    });
  }

  void deleteAll() {
    setState(() {
      _calculation.deleteAll();
      _str = _calculation.getString();
    });
  }

  void deleteOne() {
    setState(() {
      _calculation.deleteOne();
      _str = _calculation.getString();
    });
  }

  void getResult() {
    setState(() {
      try {
        _str = _calculation.getResult().toString();
      } on DivideByZeroException {
        _str = "Division by Zero";
      } finally {
        //regardless set new _calculation
        _calculation = new Calculation();
      }
    });

    void saveCalculation(){
      setState(() {
        _savedExpression = _str;
        if(_savedExpression != ""){
          try{
            ///func here to make http request
            _savedExpression = _savedExpression;
          } on Exception {
            _str = "Cannot Save";
          }finally{
            _calculation = new Calculation();
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //vertical column takes up width
        children: <Widget>[
          //calculatorScreen
          Expanded(
            flex: 2, //screen row takes 2/7 of col ht
            child: Card(
              color: Colors.lightGreen[50], //low intesity green 500 is normal
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  _str,
                  textScaleFactor: 2.0,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1, //delete keys take 1/7 of row ht
            child: Row(
              //back and C buttons
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                //FlatButton deprecated
                //encapsulate each button in Expanded
                Expanded(
                  //no ExpandedColumn
                  flex: 2, //take 3/4 of row width
                  child: TextButton(
                    style: ButtonStyle(
                        //54 is grey
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black54)),
                    onPressed: () {
                      deleteAll();
                    },
                    child: Text('C'),
                  ),
                ),
                Expanded(
                  flex: 1, //take 1/4 of row with
                  child: TextButton(
                      style: ButtonStyle(
                        //87 is black, transparency for black and white only
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black87),
                      ),
                      onPressed: () {
                        deleteOne();
                      },
                      child: Text('<-')
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    onPressed: (){
                      //func to save here
                    },
                    child: Text('save')
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4, //num keys take 4/7 of app col ht
            child: Row(
              //num keys and operators
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 3, // col of num buttons takes 3/4 of the row's width
                  child: Column(
                    //num keys
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ExpandedRow(
                        //7,8,9, no flex since 3 buttons take the 3/4 width
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ExpandedButton(
                            child: Text(
                              '7',
                            ),
                            style: numButStyle,
                            onPressed: () {
                              add('7');
                            },
                            color: Colors.blueAccent,
                          ),
                          ExpandedButton(
                            child: Text(
                              '8',
                            ),
                            style: numButStyle,
                            onPressed: () {
                              add('8');
                            },
                            color: Colors.blueAccent,
                          ),
                          ExpandedButton(
                            child: Text(
                              '9',
                            ),
                            style: numButStyle,
                            onPressed: () {
                              add('9');
                            },
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                      ExpandedRow(
                        //4,5,6
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ExpandedButton(
                            child: Text(
                              '4',
                            ),
                            style: numButStyle,
                            onPressed: () {
                              add('4');
                            },
                            color: Colors.blueAccent,
                          ),
                          ExpandedButton(
                            child: Text(
                              '5',
                            ),
                            style: numButStyle,
                            onPressed: () {
                              add('5');
                            },
                            color: Colors.blueAccent,
                          ),
                          ExpandedButton(
                            child: Text(
                              '6',
                            ),
                            style: numButStyle,
                            onPressed: () {
                              add('6');
                            },
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                      ExpandedRow(
                        //1,2,3
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ExpandedButton(
                            child: Text(
                              '1',
                            ),
                            style: numButStyle,
                            onPressed: () {
                              add('1');
                            },
                            color: Colors.blueAccent,
                          ),
                          ExpandedButton(
                            child: Text(
                              '2',
                            ),
                            style: numButStyle,
                            onPressed: () {
                              add('2');
                            },
                            color: Colors.blueAccent,
                          ),
                          ExpandedButton(
                            child: Text(
                              '3',
                            ),
                            style: numButStyle,
                            onPressed: () {
                              add('3');
                            },
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                      ExpandedRow(
                        //0,.,=
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ExpandedButton(
                            child: Text(
                              '0',
                            ),
                            style: numButStyle,
                            onPressed: () {
                              add('0');
                            },
                            color: Colors.blueAccent,
                          ),
                          ExpandedButton(
                            child: Text(
                              '.',
                            ),
                            style: numButStyle,
                            onPressed: () {
                              add('.');
                            },
                            color: Colors.blueAccent,
                          ),
                          ExpandedButton(
                            child: Text(
                              '=',
                            ),
                            style: numButStyle,
                            onPressed: () {
                              getResult();
                            },
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1, //operator keys col takes 1/4 of row width
                  child: Column(
                    //operator keys
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ExpandedButton(
                        child: Text(
                          'div',
                        ),
                        style: numButStyle,
                        onPressed: () {
                          add('/');
                        },
                        color: Colors.blue,
                      ),
                      ExpandedButton(
                        child: Text(
                          '*',
                        ),
                        style: numButStyle,
                        onPressed: () {
                          add('*');
                        },
                        color: Colors.blue,
                      ),
                      ExpandedButton(
                        child: Text(
                          '-',
                        ),
                        style: numButStyle,
                        onPressed: () {
                          add('-');
                        },
                        color: Colors.blue,
                      ),
                      ExpandedButton(
                        child: Text(
                          '+',
                        ),
                        style: numButStyle,
                        onPressed: () {
                          add('+');
                        },
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
