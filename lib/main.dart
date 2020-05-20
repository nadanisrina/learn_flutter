import 'package:flutter/material.dart';
import 'screen/Quotes.dart';
import 'screen/card.dart';
import 'screen/choose_location.dart';
import 'screen/home.dart';
import 'screen/location.dart';
import 'screen/Loading.dart';
import 'screen/choose_location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/' : (context) => Loading(),
    '/home' : (context) => Home(),
    '/choose_location' : (context) => ChooseLocation(),
    '/location' : (context) => Location()
  },
));

