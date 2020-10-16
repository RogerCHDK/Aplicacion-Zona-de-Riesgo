import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_unidad1/core/models/filtroModel.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDFiltro.dart';
import 'package:proyecto_unidad1/filtros/views/filtroShow.dart';

class FiltroMunicipios extends StatefulWidget {
  final String nombreFiltro;
  FiltroMunicipios({@required this.nombreFiltro});
  _FiltroMunicipiosState createState() => _FiltroMunicipiosState();
}

class _FiltroMunicipiosState extends State<FiltroMunicipios> {
  List<Filtro> filtros;
  @override
  Widget build(BuildContext context) {
    final filtroProvider = Provider.of<CRUDFiltro>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Filtros')),
      ),
      body: Container(
        child: StreamBuilder(
            stream: filtroProvider.filtroRiesgo(widget
                .nombreFiltro), //aqui estamos escuchando para que cada que haya un cambio en la base de datos se vea reflejado
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                filtros = snapshot.data.documents
                    .map((doc) => Filtro.fromMap(doc.data, doc.documentID))
                    .toList();
                return ListView.builder(
                    itemCount: filtros.length,
                    itemBuilder: (buildContext, index) =>
                        FiltroShow(filtroDetails: filtros[index]));
              } else {
                return Text('fetching');
              }
            }),
      ),
    );
  }
}
