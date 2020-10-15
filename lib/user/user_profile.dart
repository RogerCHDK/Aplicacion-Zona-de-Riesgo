import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_unidad1/core/models/municipioModel.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDMunicipios.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final municipioProvider = Provider.of<CRUDMunicipios>(context);

    List<Municipio> lista_municipio = [
      Municipio(
          id: "4",
          nombre: "MEtepec",
          significado: "puente de la wea",
          cabeceraMunicipal: "Valle de mete",
          superficie: "32",
          altitud: "23",
          clima: "calido"),
      Municipio(
          id: "5",
          nombre: "Otumba",
          significado: "puente de la wea",
          cabeceraMunicipal: "Valle de mete",
          superficie: "32",
          altitud: "23",
          clima: "calido"),
      Municipio(
          id: "3",
          nombre: "Valle de bravo",
          significado: "fgr",
          cabeceraMunicipal: "Valle de bravo",
          superficie: "32",
          altitud: "23",
          clima: "calido"),
    ];
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Agregar Riesgo'),
        ),
      ),
      body: RaisedButton(
        onPressed: () async {
          await municipioProvider.agregarVarios(lista_municipio);
        },
        child: Text('Agregar', style: TextStyle(color: Colors.white)),
        color: Colors.blue,
      ),
    );
  }
}
