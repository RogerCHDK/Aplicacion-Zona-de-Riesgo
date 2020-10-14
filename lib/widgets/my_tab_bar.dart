import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:proyecto_unidad1/municipios/views/addMunicipio.dart';
import 'package:proyecto_unidad1/municipios/views/homeViewMunicipios.dart';
import 'package:proyecto_unidad1/ui/views/homeView.dart';

class MyTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(backgroundColor: Color(0x33FFFFFF), items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.indigo),
                  title: Text("")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.indigo),
                  title: Text("")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.indigo),
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
                    builder: (BuildContext context) => HomeView(),
                  );
                  break;
                case 2:
                  return CupertinoTabView(
                    builder: (BuildContext context) => AddMunicipio(),
                  );
                  break;
              }
            }));
  }
}
