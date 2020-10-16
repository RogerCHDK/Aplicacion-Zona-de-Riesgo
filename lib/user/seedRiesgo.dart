import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_unidad1/core/models/riesgoModel.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDRiesgos.dart';

class SeedRiesgo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final riesgoProvider = Provider.of<CRUDRiesgo>(context);

    List<Riesgo> lista_riesgo = [
      Riesgo(nombre: "Zona Volcanica", municipio: "Amecameca"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Yecapixtla"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Cuautla"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Zacualpan"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Cholula "),
      Riesgo(nombre: "Zona Volcanica", municipio: "Atlixco"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Texcoco"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Ixtapaluca"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Chalco"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Tlalmanalco"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Ecatzingo"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Atlautla"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Zinacantepec"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Calimaya"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Tenancingo"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Toluca"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Tenango del Valle"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Villa Guerrero"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Coatepec Harinas"),
      Riesgo(nombre: "Zona Volcanica", municipio: "Temascaltepec"),
      Riesgo(nombre: "Inundacion", municipio: "Toluca"),
      Riesgo(nombre: "Inundacion", municipio: "Calimaya"),
      Riesgo(nombre: "Inundacion", municipio: "San Mateo Atenco"),
      Riesgo(nombre: "Inundacion", municipio: "Tenango del Valle"),
      Riesgo(nombre: "Inundacion", municipio: "Temascaltepec"),
      Riesgo(nombre: "Inundacion", municipio: "Texcoco"),
      Riesgo(nombre: "Inundacion", municipio: "Ixtapaluca"),
      Riesgo(nombre: "Zona Sismica", municipio: "Michoacan"),
      Riesgo(nombre: "Zona Sismica", municipio: "Guerrero"),
      Riesgo(nombre: "Zona Sismica", municipio: "Oaxaca"),
      Riesgo(nombre: "Zona Sismica", municipio: "Acambay"),
      Riesgo(nombre: "Zona Sismica", municipio: "Tlayala"),
      Riesgo(nombre: "Incendio Forestal", municipio: "Valle de Bravo"),
      Riesgo(nombre: "Incendio Forestal", municipio: "Temascaltepec"),
      Riesgo(nombre: "Incendio Forestal", municipio: "Villa de Allende"),
      Riesgo(nombre: "Incendio Forestal", municipio: "Coatepec Harinas"),
      Riesgo(nombre: "Incendio Forestal", municipio: "Villa del Carbon"),
      Riesgo(nombre: "Incendio Forestal", municipio: "Ixtapaluca"),
      Riesgo(nombre: "Incendio Forestal", municipio: "Ocuilan"),
      Riesgo(nombre: "Incendio Forestal", municipio: "San Jose del Rincon"),
      Riesgo(nombre: "Deslave", municipio: "Ecatepec"),
      Riesgo(nombre: "Deslave", municipio: "Nezahualcóyotl"),
      Riesgo(nombre: "Derrumbes", municipio: "Xonacatlan"),
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
          await riesgoProvider.agregarVarios(lista_riesgo);
        },
        child: Text('Agregar', style: TextStyle(color: Colors.white)),
        color: Colors.blue,
      ),
    );
  }
}
