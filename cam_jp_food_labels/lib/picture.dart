import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:io';

class PictureScreen extends StatefulWidget {
  //when to have constructor and when not???
  //const PictureScreen({Key? key}) : super(key: key);
  final XFile picture;
  PictureScreen(this.picture);

  @override
  _PictureScreenState createState() => _PictureScreenState();
}

//retreive device ht, return col with pic passed to screen with button
//belwo to send file to relevant ML service
class _PictureScreenState extends State<PictureScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Picture'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(widget.picture.path),
          Container(
              height: deviceHeight / 1.5,
              child: Image.file(File(widget.picture.path))),
          Row(
            children: [
              ElevatedButton(
                child: Text('Text Recognition'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
