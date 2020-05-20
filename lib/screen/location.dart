import 'package:flutter/material.dart';
import 'dart:ui';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  int counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //print('this is init state');
  }
  @override
  Widget build(BuildContext context) {
    //print('this is build $counter');
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('location page'),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Text('counter'),
          RaisedButton(
            onPressed: (){
              setState(() {
                counter += 1;
              });
            },
            child: Text('counter now $counter'),
          ),
        ],
      ),
    );
  }
}
