import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_unidad1/core/models/municipioModel.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDMunicipios.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserProfile extends StatelessWidget {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

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
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('Usuario'),
        ),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            await _firebaseAuth.signOut();
            Navigator.of(context).pushNamed('/');
          },
          child: Text('Salir', style: TextStyle(color: Colors.white)),
          color: Colors.red,
        ),
      ),
    );
  }
}
