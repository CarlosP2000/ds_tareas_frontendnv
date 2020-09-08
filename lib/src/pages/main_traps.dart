import 'package:flutter/material.dart';




//Importar otros archivos (pantallas)
import 'ViewTicket.dart';
import 'CreateTicket.dart';
import 'HelpPage.dart';



class MainTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainTrips();
  }
}

class _MainTrips extends State<MainTrips> {
  int indexTap = 0;

  //Lista de pantallas
  final List<Widget> widgetsChildren = [ViewTicket(), CreateTicket(), HelpPage()];

  void onTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      //barra de navegacion
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            //Colores iconos
            canvasColor: Colors.orange,
            primaryColor: Colors.black),
        child: BottomNavigationBar(
          onTap: onTapped,
          currentIndex: indexTap,
          items: [
            //iconos (Se pueden agregar mas)
            BottomNavigationBarItem(
                icon: Icon(Icons.create), title: Text("CREAR TICKET")),
            BottomNavigationBarItem(
                icon: Icon(Icons.view_list), title: Text("VER TICKET")),
            BottomNavigationBarItem(icon: Icon(Icons.help), title: Text("HELP"))
          ],
        ),
      ),
    );
  }
}
