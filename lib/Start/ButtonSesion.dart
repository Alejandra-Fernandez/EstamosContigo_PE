import 'package:flutter/material.dart';
import 'package:proyecto_pe/Login/LoginPage.dart';


class ButtonSesion extends StatelessWidget{
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
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          child: Text("Iniciar Sesion",style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}

