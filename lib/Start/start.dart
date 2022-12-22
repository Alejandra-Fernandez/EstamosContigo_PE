import 'package:flutter/material.dart';
import 'ButtonRegistro.dart';
import 'ButtonSesion.dart';


class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
                child: Align(
                  alignment: FractionalOffset.bottomRight,
                  child: Container(
                    padding: EdgeInsets.only(right: 10, left: 5, top: 80, bottom: 50),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.cyan.shade600,
                          Colors.cyan.shade200,
                        ],
                        ),
                      borderRadius: BorderRadius.only(
                        topLeft:  Radius.circular(200)
                      )
                    ),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("Ayudarte es un privilegio", style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          letterSpacing: 3
                        ),),
                      ),
                    ),
                  ),
                ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  //Elemento 1: icono
                  child: Image.asset('assets/icono.png',
                    width: MediaQuery.of(context).size.width/2,
                    height: 200,
                  ),
                ),
                Center(
                  //Elemento 2: logo
                  child: Image.asset('assets/letras.png',
                    width: MediaQuery.of(context).size.width/2,
                    height: 70,
                  ),
                ),

                //Elemento 3: boton de inicio de sesion
                SizedBox(height: 40,),
                ButtonSesion(),

                //Elemento 3: boton de registro
                SizedBox(height: 40,),
                ButtonRegistro(),

              ],
            )
          ],
        ),
      ),
    );
  }

}
