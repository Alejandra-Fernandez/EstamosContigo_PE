import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Start/start.dart';



void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Start(),
    );
  }
}

