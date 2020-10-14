import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:proyecto_unidad1/filtros/filtro_screen.dart';
import 'package:proyecto_unidad1/municipios/views/homeViewMunicipios.dart';
import 'package:proyecto_unidad1/riesgo/riesgo_screen.dart';
import 'package:proyecto_unidad1/user/user_profile.dart';

class MyTabBarCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(backgroundColor: Color(0x33FFFFFF), items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.indigo), //Municipios
                  title: Text("")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.indigo), //Filtros
                  title: Text("")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.warning, color: Colors.indigo), //Riesgos
                  title: Text("")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.indigo), //Perfil
                  title: Text("")),
            ]),
            tabBuilder: (BuildContext context, int index) {
              switch (index) {
                case 0:
                  return CupertinoTabView(
                    builder: (BuildContext context) => HomeViewMunicipio(),
                  );
                  break;
                case 1:
                  return CupertinoTabView(
                    builder: (BuildContext context) => FiltroScreen(),
                  );
                  break;
                case 2:
                  return CupertinoTabView(
                    builder: (BuildContext context) => RiesgoScreen(),
                  );
                case 3:
                  return CupertinoTabView(
                    builder: (BuildContext context) => UserProfile(),
                  );
                  break;
              }
            }));
  }
}
