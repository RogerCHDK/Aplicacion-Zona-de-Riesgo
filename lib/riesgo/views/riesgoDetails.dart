import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_unidad1/core/models/municipioModel.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDMunicipios.dart';

class RiesgoDetails extends StatefulWidget {
  final String nombreMunicipio;
  RiesgoDetails({@required this.nombreMunicipio});
  _RiesgoDetailsState createState() => _RiesgoDetailsState();
}

class _RiesgoDetailsState extends State<RiesgoDetails> {
  List<Municipio> municipios;
  @override
  Widget build(BuildContext context) {
    final municipioProvider = Provider.of<CRUDMunicipios>(context);

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Riesgos')),
      ),
      body: Container(
        child: StreamBuilder(
            stream: municipioProvider.filtroMunicipio(widget
                .nombreMunicipio), //aqui estamos escuchando para que cada que haya un cambio en la base de datos se vea reflejado
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                municipios = snapshot.data.documents
                    .map((doc) => Municipio.fromMap(doc.data, doc.documentID))
                    .toList();
                return ListView.builder(
                    itemCount: municipios.length,
                    itemBuilder: (buildContext, index) => Column(
                          //mainAxisSize: MainAxisSize.max,
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'IGECEM: ${municipios[index].id}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 22,
                                  fontFamily: "Lato"),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Municipio: ${municipios[index].nombre}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 22,
                                  fontFamily: "Lato"),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Cabecera: ${municipios[index].cabeceraMunicipal}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 22,
                                  fontFamily: "Lato"),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Significado: ${municipios[index].significado}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 22,
                                  fontFamily: "Lato"),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Superficie: ${municipios[index].superficie}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 22,
                                  fontFamily: "Lato"),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Altitud: ${municipios[index].altitud}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 22,
                                  fontFamily: "Lato"),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Clima: ${municipios[index].clima}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 22,
                                  fontFamily: "Lato"),
                            ),
                          ],
                        ));
              } else {
                return Text('fetching');
              }
            }),
      ),
    );
  }
}
