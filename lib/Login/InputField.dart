import 'package:flutter/material.dart';

class InputField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.indigo.shade100)
              )
          ),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Correo",
                hintStyle: TextStyle(color: Colors.black26),
                border: InputBorder.none
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.indigo.shade100)
              )
          ),
          child: TextField(
              obscureText: true,
            decoration: InputDecoration(
                hintText: "Contraseña",
                hintStyle: TextStyle(color: Colors.black26),
                border: InputBorder.none
            ),
          ),
        ),
      ],
    );
  }
}