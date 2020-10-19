import 'package:flutter/material.dart';
import 'package:proyecto_unidad1/core/models/municipioModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDMunicipios.dart';
import 'package:proyecto_unidad1/municipios/views/addMunicipio.dart';
import 'package:proyecto_unidad1/municipios/widgets/municipioCard.dart';

class HomeViewConsultor extends StatefulWidget {
  @override
  _HomeViewConsultorState createState() => _HomeViewConsultorState();
}

class _HomeViewConsultorState extends State<HomeViewConsultor> {
  List<Municipio> municipios;
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<CRUDMunicipios>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('Municipio')),
      ),
      body: Container(
        child: StreamBuilder(
            stream: productProvider
                .fetchProductsAsStream(), //aqui estamos escuchando para que cada que haya un cambio en la base de datos se vea reflejado
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                municipios = snapshot.data.documents
                    .map((doc) => Municipio.fromMap(doc.data, doc.documentID))
                    .toList();
                return ListView.builder(
                    itemCount: municipios.length,
                    itemBuilder: (buildContext, index) => MunicipioCard(
                          municipioDetails: municipios[index],
                          consultor: true,
                        ));
              } else {
                return Text('fetching');
              }
            }),
      ),
    );
  }
}
