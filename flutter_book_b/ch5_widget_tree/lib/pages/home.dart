///SDK does not create separate home.dart file which contains the main
///presentation page when app starts
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  ///BuildContext is a handle to widget in widget tree
  Widget build(BuildContext context) {
    //Scaffold implements basic Material Design visual layout
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                _buildHorizontalRow(),
                Padding(padding: EdgeInsets.all(16.0),),
                _buildRowAndColumn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _buildRowAndColumn() {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              color: Colors.yellow,
              height: 60.0,
              width: 60.0,
            ),
            ///8 pixels around widget
            Padding(padding: EdgeInsets.all(16.0),),
            Container(
              color: Colors.brown,
              height: 20.0,
              width: 20.0,
            ),
            Divider(),
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.lightGreen,
                  radius: 100.0,
                  child: _buildRowAndStack(),
                ),
              ],
            ),
            Divider(),
            Text('End of the Line'),
          ],
        ),
      ],
    );
  }

  Stack _buildRowAndStack() {
    return Stack(
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.yellow,
        ),
        Container(
          height: 60.0,
          width: 60.0,
          color: Colors.amber,
        ),
        Container(
          height: 40.0,
          width: 40.0,
          color: Colors.brown,
        ),
      ],
    );
  }

  Row _buildHorizontalRow() {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.yellow,
          height: 40.0,
          width: 40.0,
        ),
        Padding(padding: EdgeInsets.all(16.0),),
        Expanded(
          child: Container(
            color: Colors.amber,
            height: 40.0,
            width: 40.0,
          ),
        ),
        Padding(padding: EdgeInsets.all(16.0),),
        Container(
          color: Colors.brown,
          height: 40.0,
          width: 40.0,

        ),
      ],
    );
  }
}
