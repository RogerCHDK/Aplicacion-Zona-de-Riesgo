import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_unidad1/core/models/municipioModel.dart';
import 'package:proyecto_unidad1/core/models/riesgoModel.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDMunicipios.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDRiesgos.dart';

class AddRiesgo extends StatefulWidget {
  final Municipio municipio;
  AddRiesgo({@required this.municipio});
  @override
  _AddRiesgoState createState() => _AddRiesgoState();
}

class _AddRiesgoState extends State<AddRiesgo> {
  final _formKey = GlobalKey<FormState>();
  String id_municipio = "Municipio";
  String nombre = "Inundacion";

  @override
  Widget build(BuildContext context) {
    var riesgoProvider = Provider.of<CRUDRiesgo>(context);
    final municipioProvider = Provider.of<CRUDMunicipios>(context);
    //municipios = productProvider.fetchProducts();

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Agregar Riesgo'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(120),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              DropdownButton<String>(
                //el combobox de nombre
                value: nombre,
                onChanged: (String newValue) {
                  setState(() {
                    nombre = newValue;
                  });
                },
                items: <String>[
                  'Inundacion',
                  'Deslave',
                  'Zona Sismica',
                  'Incendio Forestal',
                  'Zona Volcanica',
                  'Derrumbes'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 16,
              ),
              RaisedButton(
                splashColor: Colors.red,
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    await riesgoProvider.addProduct(Riesgo(
                      id_municipio: widget.municipio.uid,
                      nombre: nombre,
                    ));
                    Navigator.pop(context);
                  }
                },
                child: Text('Agregar', style: TextStyle(color: Colors.white)),
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
