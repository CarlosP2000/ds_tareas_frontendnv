// import 'dart:js';

import 'package:flutter/material.dart';

//metodos
class HelpPage extends StatelessWidget {
  Widget createTituloTarea() {
    return Padding(
      padding:
          const EdgeInsets.only(top: 0), //espacio entre la imagen y los textbox
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Tirulo de tarea...'),
      ),
    );
  }

  Widget createTareaID() {
    return Padding(
      padding: const EdgeInsets.only(top: 20), //espacio entre los texbox
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Buscar ID tarea'),
        obscureText: true,
      ),
    );
  }

  //  Widget createLoginButton(){
  //   return Container(padding:const EdgeInsets.only(top:32),
  //   child: RaisedButton(
  //   child: Text('INGRESAR'), 
  //   onPressed:(){Navigator.pushNamed(context, '/');} ,),); //funcion vacia para el boton
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(children: [
          Image.asset(
            'assets/images/help.jpg',
            height: 100,
          ),

          createTituloTarea(), //muestra textbox1
          createTareaID(), //muestra textbox2
          // createLoginButton(), //muestra el boton login
        ]),
      ),
    );
  }
}
