import 'package:flutter/material.dart';
import 'package:proyecto_unidad1/filtros/views/elevacion_screen.dart';
import 'package:proyecto_unidad1/filtros/views/filtroMunicipios.dart';

class FiltroCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final elevacion_card = GestureDetector(
      //creo que este es como un boton
      onTap: () {
        Navigator.push(
            //cuando es presionado nos lleva a la pantalla de los detalles del producto
            context,
            MaterialPageRoute(
                builder: (_) => FiltroMunicipios(nombreFiltro: "Elevacion")));
      },
      child: Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Hero(
                tag: "1",
                child: Image.asset(
                  'assets/img/elevacion.jpg',
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 90, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Elevacion",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 23,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

    final rio_card = GestureDetector(
      //creo que este es como un boton
      onTap: () {
        Navigator.push(
            //cuando es presionado nos lleva a la pantalla de los detalles del producto
            context,
            MaterialPageRoute(
                builder: (_) => FiltroMunicipios(nombreFiltro: "Rios")));
      },
      child: Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Hero(
                tag: "2",
                child: Image.asset(
                  'assets/img/rio.jpg',
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 90, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Rios y Canales",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 23,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

    final cuerpo_agua_card = GestureDetector(
      //creo que este es como un boton
      onTap: () {
        Navigator.push(
            //cuando es presionado nos lleva a la pantalla de los detalles del producto
            context,
            MaterialPageRoute(
                builder: (_) => FiltroMunicipios(nombreFiltro: "Cuerpo Agua")));
      },
      child: Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Hero(
                tag: "3",
                child: Image.asset(
                  'assets/img/presa.jpg',
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 90, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Cuerpo de\nAgua",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 23,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

    final mas_poblados_card = GestureDetector(
      //creo que este es como un boton
      onTap: () {
        Navigator.push(
            //cuando es presionado nos lleva a la pantalla de los detalles del producto
            context,
            MaterialPageRoute(
                builder: (_) =>
                    FiltroMunicipios(nombreFiltro: "Mas Poblados")));
      },
      child: Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Hero(
                tag: "4",
                child: Image.asset(
                  'assets/img/mas_poblados.jpg',
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 90, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Municipios más\nPoblados",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 23,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

    final mas_extensos_card = GestureDetector(
      //creo que este es como un boton
      onTap: () {
        Navigator.push(
            //cuando es presionado nos lleva a la pantalla de los detalles del producto
            context,
            MaterialPageRoute(
                builder: (_) =>
                    FiltroMunicipios(nombreFiltro: "Mas Extensos")));
      },
      child: Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Hero(
                tag: "5",
                child: Image.asset(
                  'assets/img/mas_extensos.jpg',
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 90, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Municipios más\nExtensos",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 23,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

    final menos_poblados_card = GestureDetector(
      //creo que este es como un boton
      onTap: () {
        Navigator.push(
            //cuando es presionado nos lleva a la pantalla de los detalles del producto
            context,
            MaterialPageRoute(
                builder: (_) =>
                    FiltroMunicipios(nombreFiltro: "Menos Extensos")));
      },
      child: Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Hero(
                tag: "6",
                child: Image.asset(
                  'assets/img/menos_poblado.jpg',
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 90, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Municipios menos\nPoblados",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 23,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

    final industrializados_card = GestureDetector(
      //creo que este es como un boton
      onTap: () {
        Navigator.push(
            //cuando es presionado nos lleva a la pantalla de los detalles del producto
            context,
            MaterialPageRoute(
                builder: (_) =>
                    FiltroMunicipios(nombreFiltro: "Industrializado")));
      },
      child: Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Hero(
                tag: "7",
                child: Image.asset(
                  'assets/img/industria.jpg',
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 90, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Municipios\nIndustrializados",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 23,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 1,
              children: [
                cuerpo_agua_card,
                mas_poblados_card,
                mas_extensos_card,
                menos_poblados_card,
                industrializados_card,
                elevacion_card,
                rio_card,
              ],
            )),
      ],
    );
  }
}
