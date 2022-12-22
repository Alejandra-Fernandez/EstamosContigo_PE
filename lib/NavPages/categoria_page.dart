import 'package:flutter/material.dart';

import '../Music/song_page.dart';

class CategoriaPage extends StatefulWidget {
  const CategoriaPage({Key? key}) : super (key: key);

  @override
  _CategoriaPageState createState() => _CategoriaPageState();
  }
  class _CategoriaPageState extends State<CategoriaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Escucha musica'),
        backgroundColor: Colors.indigo[400],
        ),
      body: const SongPage(),
    );
  }

}