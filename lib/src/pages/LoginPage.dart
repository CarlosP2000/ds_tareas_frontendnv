
import 'package:ds_tareas_fontend_nv/src/pages/main_traps.dart';
import 'package:flutter/material.dart';

import 'main_traps.dart';





void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
   
    initialRoute: '/',
    routes: {
     
      '/': (context) => FirstScreen(),
      
      '/second': (context) => MainTrips(),
    },
  ));
} 

class FirstScreen extends StatelessWidget {
   @override
  Widget build(BuildContext context) {

  Widget createEmailInput() {
    return Padding(
      padding:
          const EdgeInsets.only(top: 0), //espacio entre la imagen y los textbox
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Ingrese su usuario...'),
      ),
    );
  }

  Widget createPasswordInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 25), //espacio entre los texbox
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Ingrese su contraseña...'),
        obscureText: true,
      ),
    );
  }

  Widget createLoginButton(){
    
    return Container(padding:const EdgeInsets.only(top:50),
    height: 105.0,
    child: RaisedButton(
    color: Colors.orange,
    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
    child: Text('INGRESAR'), 
    onPressed:(){Navigator.pushNamed(context, '/second');} ,),);
  
  }


    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(children: [
          Image.asset(
            'assets/images/dmosoft.jpg',
            height: 350,
          ),

          createEmailInput(), //muestra textbox1
          createPasswordInput(), //muestra textbox2
          createLoginButton(), //muestra el boton login
        ]),
      ),
    );
  }
}