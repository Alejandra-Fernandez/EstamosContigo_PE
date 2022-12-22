import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            //icono
            child: Image.asset('assets/icono.png',
              width: MediaQuery.of(context).size.width/2,
              height: 100,
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text("Bienvenido", style: TextStyle(color: Colors.white, fontSize: 20),),
          )
        ],
      ),
    );
  }
}