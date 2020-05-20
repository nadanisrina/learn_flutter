import 'package:flutter/material.dart';
import 'dart:ui';

class ChooseLocation extends StatefulWidget {

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async{
    String user = await Future.delayed(Duration(seconds: 2),(){
      return 'nada';
    });

    String bio = await Future.delayed(Duration(seconds: 3),(){
      return 'lucu';
    });
    print('$user $bio' );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton.icon(
          onPressed: (){
            Navigator.pushNamed(context, '/location');
          },
          icon: Icon(Icons.local_airport),
          label: Text('choose location')),
    );
  }
}
