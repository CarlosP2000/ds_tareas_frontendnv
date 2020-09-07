import 'package:flutter/material.dart';

//mis imports
import 'src/pages/main_traps.dart';
import 'src/pages/LoginPage.dart';

void main() => runApp(RutasApp());

class RutasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        '/': (context) => FirstScreen(),       //asignacion de ruta1 
        '/second': (context) => MainTrips(),   //asignacio de ruta2
      },
      initialRoute: '/',     //ruta inicial
    );
  }
}
