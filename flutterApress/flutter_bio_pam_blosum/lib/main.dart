import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Global & Local Alignment of Proteins",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Entrez(),
    );
  }
}

class Entrez extends StatefulWidget{
  @override
  _EntrezState createState() => _EntrezState();
}

class _EntrezState extends State<Entrez> {
  // This widget is the root of your application.
  final _accessions = <String>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _saved = <String>[]; // saved accessions


  @override
  Widget build(BuildContext context) {
    Widget accessionSearchSection = Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, //fill width
          children: [
            //build rows for input
            _buildInputRow(
                Colors.blue, Icons.search, "Accession 1", "NP1000.00"),
            _buildInputRow(
                Colors.blue, Icons.search, "Accession 2", "NP2000.00")
          ],
        )
    );

    Widget booleanSearchSection = Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildInputRow(Colors.blue, Icons.search,
                "NCBI Boolean", "mus musculus")
          ],
        )
    );

    return MaterialApp(
        title: 'Title Gloal Local',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Global & Local Alignment'),
            actions: [
              //list hamburger icon to app bar when clicked new route pushed
              //on stack
              IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
            ],
          ),
          body: ListView(
            children: [
              accessionSearchSection,
              booleanSearchSection,
              _buildAccList(),
            ],
          ),
        )
    );
  }

  //when icon pushed saved favorite accession to next page
  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          final tiles = _saved.map(
                (String accession) {
              return ListTile(
                title: Text(
                  accession,
                  style: _biggerFont,
                ),
              );
            },
          );
          //divided holds final rows converted to list with toList()
          final divided = tiles.isNotEmpty ?
          ListTile.divideTiles(context: context, tiles: tiles).toList()
              : <Widget>[];
          return Scaffold(
            appBar: AppBar(
              title: Text('Saved Accessions'),
            ),
            body: ListView(children: divided),
          );
        },
      ),
    );
  }

  Widget _buildAccList() {
    return ListView.builder(
      //shrinkWrap: true,
      padding: const EdgeInsets.all(16),

      itemBuilder: (BuildContext _context, int i) {
        if (i.isOdd) {
          return Divider();
        }
        final int index = i ~/ 2;
        return _buildSearchResRow(_accessions[index]);
      },
    );
  }

  Widget _buildSearchResRow(String acc) {
    final alreadySaved = _saved.contains(acc);
    return ListTile(
      title: Text(
        acc,
        style: _biggerFont,
      ),
      trailing: Icon(
          alreadySaved ? Icons.check : Icons.check_box, //check box if selected
          color: alreadySaved ? Colors.red : null
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(acc);
          } else {
            _saved.add(acc);
          }
        });
      },
    );
  }

  //label is Accession 1 or 2, clickable icon need input box
  Row _buildInputRow(Color color, IconData icon, String label, String hint) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: label,
              hintText: hint, //give some Acc num
            ),
            autofocus: false,
          ),
        ),
        Icon(icon, color: Colors.green)

      ],
    );
  }
}
