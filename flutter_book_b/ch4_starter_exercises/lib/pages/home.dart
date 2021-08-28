///SDK does not create separate home.dart file which contains the main
///presentation page when app starts
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //Scaffold implements basic Material Design visual layout
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(),
    );
  }
}
