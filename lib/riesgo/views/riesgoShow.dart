import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_unidad1/core/models/riesgoModel.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDRiesgos.dart';
import 'package:proyecto_unidad1/riesgo/views/riesgoDetails.dart';
import 'package:proyecto_unidad1/widgets/floating_action_button_green.dart';

class RiesgoShow extends StatelessWidget {
  final Riesgo riesgoDetails;
  RiesgoShow({@required this.riesgoDetails});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final municipioProvider = Provider.of<CRUDRiesgo>(context);

    final id = Text(
      'ID: ${this.riesgoDetails.uid}',
      style: TextStyle(
          fontFamily: 'Lato', fontSize: 16.0, fontWeight: FontWeight.bold),
    );

    final nombre = Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Municipio: ${this.riesgoDetails.municipio}',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ]));

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
            ],
          )),
    );

    final botones_crud = Container(
      margin: EdgeInsets.only(left: 250.0, top: 100.0),
      width: screenWidth * 0.85,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButtonGreen(
            iconData: Icons.remove_red_eye,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => RiesgoDetails(
                            nombreMunicipio: riesgoDetails.municipio,
                          )));
            },
          ),
        ],
      ),
    );

    return Stack(
      alignment: Alignment(0.1, 0.8),
      children: <Widget>[card, botones_crud],
    );
  }
}
