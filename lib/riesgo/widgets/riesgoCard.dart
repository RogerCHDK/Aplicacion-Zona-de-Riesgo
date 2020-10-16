import 'package:flutter/material.dart';
import 'package:proyecto_unidad1/riesgo/views/riesgoDetails.dart';
import 'package:proyecto_unidad1/riesgo/views/riesgoMunicipios.dart';
import 'package:proyecto_unidad1/riesgo/views/riesgo_screen.dart';

class RiesgoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final inundacion_card = GestureDetector(
      //creo que este es como un boton
      onTap: () {
        Navigator.push(
            //cuando es presionado nos lleva a la pantalla de los detalles del producto
            context,
            MaterialPageRoute(
                builder: (_) => RiesgosMunicipios(nombreRiesgo: "Inundacion")));
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
                  'assets/img/inundaciones.jpg',
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 90, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Inundación",
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

    final deslave_card = GestureDetector(
      //creo que este es como un boton
      onTap: () {
        Navigator.push(
            //cuando es presionado nos lleva a la pantalla de los detalles del producto
            context,
            MaterialPageRoute(builder: (_) => RiesgoScreen()));
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
                  'assets/img/deslave.jpg',
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 90, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Deslave",
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

    final zona_sismica_card = GestureDetector(
      //creo que este es como un boton
      onTap: () {
        Navigator.push(
            //cuando es presionado nos lleva a la pantalla de los detalles del producto
            context,
            MaterialPageRoute(builder: (_) => RiesgoScreen()));
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
                  'assets/img/sismo.jpg',
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 90, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Zona\nSismica",
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

    final incendio_card = GestureDetector(
      //creo que este es como un boton
      onTap: () {
        Navigator.push(
            //cuando es presionado nos lleva a la pantalla de los detalles del producto
            context,
            MaterialPageRoute(builder: (_) => RiesgoScreen()));
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
                  'assets/img/incendio.jpg',
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 90, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Incendio\nForestal",
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

    final zona_volcanica_card = GestureDetector(
      //creo que este es como un boton
      onTap: () {
        Navigator.push(
            //cuando es presionado nos lleva a la pantalla de los detalles del producto
            context,
            MaterialPageRoute(builder: (_) => RiesgoScreen()));
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
                  'assets/img/volcan.jpg',
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 90, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Zona\nVolcanica",
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

    final derrumbes_card = GestureDetector(
      //creo que este es como un boton
      onTap: () {
        Navigator.push(
            //cuando es presionado nos lleva a la pantalla de los detalles del producto
            context,
            MaterialPageRoute(builder: (_) => RiesgoScreen()));
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
                  'assets/img/derrumbe.jpg',
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 90, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Derrumbes",
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

    return Stack(
      //alignment: Alignment(0.9, 0.95),
      children: [
        CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 1,
                  children: [
                    inundacion_card,
                    deslave_card,
                    zona_sismica_card,
                    incendio_card,
                    zona_volcanica_card,
                    derrumbes_card,
                  ],
                )),
          ],
        ),
        /*FloatingActionButton(
          //este es el boton con la accion de llevarnos al formulario para cear productos
          onPressed: () {
            Navigator.pushNamed(context, '/addRiesgo');
          },
          child: Icon(Icons.add),
          isExtended: true,
        ),*/
      ],
    );
  }
}
