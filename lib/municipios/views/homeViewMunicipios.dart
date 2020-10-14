import 'package:flutter/material.dart';
import 'package:proyecto_unidad1/core/models/municipioModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDMunicipios.dart';
import 'package:proyecto_unidad1/municipios/widgets/municipioCard.dart';

class HomeViewMunicipio extends StatefulWidget {
  @override
  _HomeViewMunicipioState createState() => _HomeViewMunicipioState();
}

class _HomeViewMunicipioState extends State<HomeViewMunicipio> {
  List<Municipio> municipios;
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<CRUDMunicipios>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        //este es el boton con la accion de llevarnos al formulario para cear productos
        onPressed: () {
          Navigator.pushNamed(context, '/addMunicipio');
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Center(child: Text('Home')),
      ),
      body: Container(
        child: StreamBuilder(
            stream: productProvider
                .fetchProductsAsStream(), //aqui estamos escuchando para que cada que haya un cambio en la base de datos se vea reflejado
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                municipios = snapshot.data.documents
                    .map((doc) => Municipio.fromMap(doc.data))
                    .toList();
                return ListView.builder(
                  itemCount: municipios.length,
                  itemBuilder: (buildContext, index) =>
                      MunicipioCard(municipioDetails: municipios[index]),
                );
              } else {
                return Text('fetching');
              }
            }),
      ),
    );
  }
}
