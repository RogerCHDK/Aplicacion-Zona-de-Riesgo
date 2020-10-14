import 'package:flutter/material.dart';
import 'package:proyecto_unidad1/filtros/filtro_screen.dart';
import 'package:proyecto_unidad1/municipios/views/homeViewMunicipios.dart';
import 'package:proyecto_unidad1/riesgo/riesgo_screen.dart';
import 'package:proyecto_unidad1/user/user_profile.dart';

class MyTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _MyTabBar();
  }
}

class _MyTabBar extends State<MyTabBar> {
  int indexTap = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetsChildren = [
      HomeViewMunicipio(),
      FiltroScreen(),
      RiesgoScreen(),
      UserProfile(),
    ];
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black, //es el color de la barra
          primaryColor: Colors.purple, //es el color de los iconos
        ), //la personalizacion
        child: BottomNavigationBar(
            onTap: onTapTapped, //le pasa automaticamente el indice
            currentIndex:
                indexTap, //le decimos que indice tiene, para que sepa que mostrar
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("Municipios")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), title: Text("Filtro")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.warning), title: Text("Riesgo")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("Perfil")),
            ]),
      ),
    );
  }

  void onTapTapped(int index) {
    //este metodo sirve para identificar que icono se selecciono
    setState(() {
      indexTap = index;
    });
  }
}
