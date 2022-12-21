import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class MyHomePage extends StatefulWidget {
  final Function currentIndex;
  const MyHomePage({Key? key, required this.currentIndex}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int index =0;
  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int i){
        setState(() {
          index = i;
          widget.currentIndex(i);
        });
      },
      backgroundColor: Colors.indigo[200],
      selectedItemColor: Colors.indigo[400],
      unselectedItemColor: Colors.grey[500],
      iconSize: 25.0,
      selectedFontSize: 14.0,
      unselectedFontSize: 11.0,

      items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Menu",
          //activeIcon: deepPurple,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note),
          label: "Categorias",
          // activeColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Perfil",
          //activeColor: Colors.deepPurple,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: "Chat bot",
          //activeColor: Colors.blue
        ),
      ],
    );
  }
}