import 'package:flutter/material.dart';

import '../Navigation/navigation.dart';

class Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 90),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)
        ),
        gradient: LinearGradient(colors: [
          Colors.deepPurple.shade500,
          Colors.deepPurple.shade200,
        ],
            begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      /*decoration: BoxDecoration(
        color: Colors.deepPurple.shade500,
        borderRadius: BorderRadius.circular(20),
      ),*/
      child: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigation()),
            );
          },
          child: Text("Ingresar",style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}





