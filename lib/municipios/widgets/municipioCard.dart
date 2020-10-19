import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_unidad1/core/models/municipioModel.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDMunicipios.dart';
import 'package:proyecto_unidad1/municipios/views/modifyMunicipio.dart';
import 'package:proyecto_unidad1/riesgo/views/addRiesgo.dart';
import 'package:proyecto_unidad1/widgets/floating_action_button_green.dart';

class MunicipioCard extends StatelessWidget {
  //Esta clase es la que muestra toda la informacion del producto
  final Municipio municipioDetails;
  final bool consultor;
  MunicipioCard({@required this.municipioDetails, @required this.consultor});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final municipioProvider = Provider.of<CRUDMunicipios>(context);

    final id = Text(
      'IGECEM: ${this.municipioDetails.id}',
      style: TextStyle(
          fontFamily: 'Lato', fontSize: 16.0, fontWeight: FontWeight.bold),
    );

    final nombre = Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Municipio: ${this.municipioDetails.nombre}',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ]));

    final significado = Text(
      'Significado: ${this.municipioDetails.significado}',
      style: TextStyle(
          fontFamily: 'Lato', fontSize: 16.0, fontWeight: FontWeight.bold),
    );

    final cabeceraMunicipal = Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Cabecera: ${this.municipioDetails.cabeceraMunicipal}',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ]));

    final superficie = Text(
      'Superficie: ${this.municipioDetails.superficie}',
      style: TextStyle(
          fontFamily: 'Lato', fontSize: 16.0, fontWeight: FontWeight.bold),
    );

    final altitud = Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Altitud: ${this.municipioDetails.altitud}',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ]));

    final clima = Text(
      'Clima: ${this.municipioDetails.clima}',
      style: TextStyle(
          fontFamily: 'Lato', fontSize: 16.0, fontWeight: FontWeight.bold),
    );

    final card = Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      width: screenWidth * 0.65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0))
          ]),
      child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              id,
              nombre,
              significado,
              cabeceraMunicipal,
              superficie,
              altitud,
              clima
            ],
          )),
    );

    final botones_crud = Container(
      margin: EdgeInsets.only(left: 200.0, top: 120.0),
      width: screenWidth * 0.85,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButtonGreen(
            iconData: Icons.edit,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => ModifyMunicipio(
                            municipio: municipioDetails,
                          )));
            },
          ),
          FloatingActionButtonGreen(
            iconData: Icons.delete,
            onPressed: () async {
              await municipioProvider.removeProduct(municipioDetails.uid);
            },
          ),
          FloatingActionButtonGreen(
            //agregar zona de riesgo
            iconData: Icons.warning,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => AddRiesgo(municipio: municipioDetails)));
            },
          )
        ],
      ),
    );

    if (consultor) {
      return Stack(
        alignment: Alignment(0.2, 1.2),
        children: <Widget>[card],
      );
    } else {
      return Stack(
        alignment: Alignment(0.2, 1.2),
        children: <Widget>[card, botones_crud],
      );
    }
  }
}
