import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_unidad1/core/models/municipioModel.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDMunicipios.dart';

class AddMunicipio extends StatefulWidget {
  @override
  _AddMunicipioState createState() => _AddMunicipioState();
}

class _AddMunicipioState extends State<AddMunicipio> {
  final _formKey = GlobalKey<FormState>();
  String id;
  String nombre;
  String significado;
  String cabeceraMunicipal;
  String superficie;
  String altitud;
  String clima;

  @override
  Widget build(BuildContext context) {
    var municipioProvider = Provider.of<CRUDMunicipios>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Agregar Municipio'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                  //Input para el id
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Clave IGECEM',
                    fillColor: Colors.grey[300],
                    filled: true,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor introduce el IGECEM';
                    }
                  },
                  onSaved: (value) => id = value),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                  //Input para el nombre
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Nombre',
                    fillColor: Colors.grey[300],
                    filled: true,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor introduce el nombre';
                    }
                  },
                  onSaved: (value) => nombre = value),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                  //Input para el significado
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Significado',
                    fillColor: Colors.grey[300],
                    filled: true,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor introduce el significado';
                    }
                  },
                  onSaved: (value) => significado = value),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                  //Input para la cabecera municipal
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Cabecera Municipal',
                    fillColor: Colors.grey[300],
                    filled: true,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor introduce la cabecera municipal';
                    }
                  },
                  onSaved: (value) => cabeceraMunicipal = value),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                  //Input para la superficie
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Superficie',
                    fillColor: Colors.grey[300],
                    filled: true,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor introduce la superficie';
                    }
                  },
                  onSaved: (value) => superficie = value),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                  //Input para la altitud
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Altitud',
                    fillColor: Colors.grey[300],
                    filled: true,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor introduce la altitud';
                    }
                  },
                  onSaved: (value) => altitud = value),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                  //Input para la cabecera municipal
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Clima',
                    fillColor: Colors.grey[300],
                    filled: true,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor introduce el clima';
                    }
                  },
                  onSaved: (value) => clima = value),
              RaisedButton(
                splashColor: Colors.red,
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    await municipioProvider.addProduct(Municipio(
                        id: id,
                        nombre: nombre,
                        significado: significado,
                        cabeceraMunicipal: cabeceraMunicipal,
                        superficie: superficie,
                        altitud: altitud,
                        clima: clima));
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
