import 'package:flutter/material.dart';
import 'package:proyecto_pe/Register/RegisterPage.dart';


class ButtonRegistro extends StatelessWidget{
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

      child: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterPage()),
            );
          },
          child: Text("Registrarse",style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}

