import 'package:flutter/cupertino.dart';

class Riesgo {
  String uid;
  String municipio;
  String nombre;

  Riesgo({
    this.uid,
    @required this.municipio,
    @required this.nombre,
  });

  Riesgo.fromMap(Map snapshot, String uid)
      : uid = uid ?? '',
        municipio = snapshot['municipio'] ?? '',
        nombre = snapshot['nombre'] ?? '';

  toJson() {
    return {"municipio": municipio, "nombre": nombre};
  }
}
