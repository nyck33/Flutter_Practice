import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum GoldMedallist {Japan, USA}
enum SearchType { car, subway, train, bicycle}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _searchTerm = "";
  bool isCLoudy = false;
  GoldMedallist? _winner = GoldMedallist.Japan;
  double sliderVal = 0.0;
  SearchType _searchType = SearchType.bicycle;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
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
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Slider(///doesn't work
              value: sliderVal,
              min: 0, max: 100,
              divisions: 10,
                label: sliderVal.round().toString(),

                onChanged: (double val) => sliderVal = val
            ),
            ListTile(
              title: const Text('Japan'),
              leading: Radio<GoldMedallist>(
                value: GoldMedallist.Japan,
                groupValue: _winner, //each button remembers this value
                onChanged: (GoldMedallist? value){
                  setState(() {_winner = value; });
                },
              )
            ),
            ListTile(
                title: const Text('USA'),
                leading: Radio<GoldMedallist>(
                  value: GoldMedallist.USA,
                  groupValue: _winner,
                  onChanged: (GoldMedallist? value){
                    setState(() {_winner = value; });
                  },
                )
            ),
            Icon(
              Icons.cake,
              color: Colors.red,
              size: 50,
            ),
            Container(
              color: Colors.brown,
              height: 200,
              width: 200,
              child: Image.asset(
                  'assets/images/cats.jpg',
                  //height: 200,
                  //width: 200
                fit: BoxFit.contain,
              ),
            ),
            Container(
              color: Colors.green,
              height: 20,
              width: 50,
              child: const Text(
                  'Search terms',
              ),
            ),
            Container(
              color: Colors.red,
              height: 20,
              width: 100,
              child: TextField(
                //event handler
                onChanged: (String val) => _searchTerm = val,
              )
            ),
            TextField(
              keyboardType: TextInputType.emailAddress, //doesn't work
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'you@email.com',
                icon: Icon(Icons.contact_mail),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'password',
              ),
            ),
            Checkbox(
              checkColor: Colors.greenAccent,
              activeColor: Colors.red,
              value: this.isCLoudy,
              onChanged: (bool? value){
                setState(() {
                  this.isCLoudy = value?? false;
                  print(value);
                });
              },
            ),

            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
