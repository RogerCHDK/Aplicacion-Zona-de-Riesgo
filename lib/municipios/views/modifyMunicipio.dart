import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_unidad1/core/models/municipioModel.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDMunicipios.dart';

class ModifyMunicipio extends StatefulWidget {
  final Municipio municipio;

  ModifyMunicipio({@required this.municipio});

  @override
  _ModifyMunicipioState createState() => _ModifyMunicipioState();
}

class _ModifyMunicipioState extends State<ModifyMunicipio> {
  final _formKey = GlobalKey<FormState>();

  String nombre;
  String significado;
  String cabeceraMunicipal;
  String superficie;
  String altitud;

  @override
  Widget build(BuildContext context) {
    final municipioProvider = Provider.of<CRUDMunicipios>(context);
    //productType =
    //  widget.product.img[0].toUpperCase() + widget.product.img.substring(1);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Modificar Municipio'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                  initialValue: widget.municipio.nombre,
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
                  initialValue: widget.municipio.significado,
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
              TextFormField(
                  initialValue: widget.municipio.cabeceraMunicipal,
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
              TextFormField(
                  keyboardType: TextInputType.numberWithOptions(),
                  initialValue: widget.municipio.superficie,
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
              TextFormField(
                  keyboardType: TextInputType.numberWithOptions(),
                  initialValue: widget.municipio.altitud,
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
              RaisedButton(
                splashColor: Colors.red,
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    await municipioProvider.updateProduct(
                        Municipio(
                            id: widget.municipio.id,
                            nombre: nombre,
                            significado: significado,
                            cabeceraMunicipal: cabeceraMunicipal,
                            superficie: superficie,
                            altitud: altitud),
                        widget.municipio.uid);
                    Navigator.pop(context);
                  }
                },
                child: Text('Modificar Municipio',
                    style: TextStyle(color: Colors.white)),
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
