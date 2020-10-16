import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_unidad1/core/models/riesgoModel.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDRiesgos.dart';
import 'package:proyecto_unidad1/riesgo/views/riesgoShow.dart';

class RiesgosMunicipios extends StatefulWidget {
  final String nombreRiesgo;
  RiesgosMunicipios({@required this.nombreRiesgo});
  _RiesgosMunicipiosState createState() => _RiesgosMunicipiosState();
}

class _RiesgosMunicipiosState extends State<RiesgosMunicipios> {
  List<Riesgo> riesgos;
  @override
  Widget build(BuildContext context) {
    final riesgoProvider = Provider.of<CRUDRiesgo>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Municipio')),
      ),
      body: Container(
        child: StreamBuilder(
            stream: riesgoProvider.filtroRiesgo(widget
                .nombreRiesgo), //aqui estamos escuchando para que cada que haya un cambio en la base de datos se vea reflejado
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                riesgos = snapshot.data.documents
                    .map((doc) => Riesgo.fromMap(doc.data, doc.documentID))
                    .toList();
                return ListView.builder(
                    itemCount: riesgos.length,
                    itemBuilder: (buildContext, index) =>
                        RiesgoShow(riesgoDetails: riesgos[index]));
              } else {
                return Text('fetching');
              }
            }),
      ),
    );
  }
}
