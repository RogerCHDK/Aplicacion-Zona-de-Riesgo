import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_unidad1/core/models/riesgoModel.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDRiesgos.dart';

class RiesgoDetails extends StatefulWidget {
  //final String riesgo;
  //RiesgoDetails({@required this.riesgo});
  _RiesgoDetailsState createState() => _RiesgoDetailsState();
}

class _RiesgoDetailsState extends State<RiesgoDetails> {
  List<Riesgo> riesgoLista;
  Riesgo prueba;

  @override
  Widget build(BuildContext context) {
    final riesgoProvider = Provider.of<CRUDRiesgo>(context);
    //prueba = riesgoProvider.getProductById("bR5flwRq0rucPQ6ab1oo");
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Zonas de Riesgo')),
        ),
        body: Container(
          child: Text(prueba.nombre),
        ));
  }
}
