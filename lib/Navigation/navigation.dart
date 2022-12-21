import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proyecto_pe/Navigation/rutas_page.dart';
import 'my_home_page.dart';


class navigation extends StatefulWidget {
  const navigation({Key? key }) : super(key: key);
  @override
  State<navigation> createState() => _navigation();
}

class _navigation extends State<navigation> {

  int index = 0;
  MyHomePage ?myBNB;

  @override
  void initState(){
    myBNB = MyHomePage(currentIndex: (i){
      setState(() {
        index = i;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myBNB,
      body: rutas(index: index),
    );
  }
}