///adding routes, Navigator manages stack containing app's routes.  Pushing route
///onto the stack updates display to route.  Popping route from stack returns
///display to previous route
///Navigator.pop does not need to be manually impolented as a back button is
///provided
///
/// Theme controls the look and feel of app, can use default or customize
/// ThemeData class
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

///builder factory constructor in ListView allows lazy building of list view on
///demand
class _RandomWordsState extends State<RandomWords> {
  //save word pairings
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _saved = <WordPair>{}; //Set stores favorite word pairings

  ///gets called by setState(), resulting in update to UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Startup Name Generator'),
        actions: [
          //add list icon to app bar, when clicked new route pushed to stack
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  ///MaterialPageRoute and its builder
  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          final tiles = _saved.map(
            (WordPair pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );

          ///divided holds final rows converted to list by
          ///convenience func toList()
          ///divideTiles adds horizontal spacing
          final divided = tiles.isNotEmpty
              ? ListTile.divideTiles(context: context, tiles: tiles).toList()
              : <Widget>[];
          //
          return Scaffold(
            appBar: AppBar(
              title: Text('Saved Suggestions'),
            ),
            body: ListView(children: divided),
          );
        },
      ),
    );
  }

  ///build ListView that displays suggested word pairing
  ///itemBuilder is a builder property that's a factory.
  ///A callback function is specified as anonymous function
  ///pass BuildContext and row iterator i to callback
  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),

      ///itemBuilder callback called once per suggested word pairing and places
      ///each into a ListTile row.  For even rows, function adds a ListTile row
      ///for word pairing.  For odd rows, function adds a Divider widget to
      ///visually separate entries.  Divider might be small on small screens.

      itemBuilder: (BuildContext _context, int i) {
        if (i.isOdd) {
          //add one pixel divider widget before each row in ListView
          print('odd: $i');
          return Divider();
        }

        ///int division, this part reached only on even so it skips the odd
        ///meaning using _suggestions[index] will print 0,1,2,3,4,...
        final int index = i ~/ 2; //0,1,1,2,2, ie. num word pairings - dividers

        if (index >= _suggestions.length) {
          //generate 10 more and add to suggestions when end of available
          //word pairings is reached
          _suggestions.addAll(generateWordPairs().take(10));
        }
        WordPair idxPair = _suggestions[index];
        print('index: $index');
        //print(_suggestions[i]);
        WordPair? typePair;
        //print(typePair.runtimeType);
        WordPair? testPair;
        WordPair? prevPair;
        i >= 0 ? testPair = _suggestions[i % 10] : null;
        i > 0 ? prevPair = _suggestions[(i - 1) % 10] : null;

        print('suggestions[$i-1]: $prevPair\nsuggestions[$i]: $testPair');

        return _buildRow(_suggestions[index]);
      },
    );
  }

  ///called by _buildSuggestions once per word pair
  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair); //already added to favorites
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          //calls setState() in build() method for State object
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }
}
