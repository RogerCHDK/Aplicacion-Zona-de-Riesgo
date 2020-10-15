import 'package:flutter/cupertino.dart';

class Riesgo {
  String uid;
  String id_municipio;
  String nombre;

  Riesgo({
    this.uid,
    @required this.id_municipio,
    @required this.nombre,
  });

  Riesgo.fromMap(Map snapshot, String uid)
      : uid = uid ?? '',
        id_municipio = snapshot['id_municipio'] ?? '',
        nombre = snapshot['nombre'] ?? '';

  toJson() {
    return {"id_municipio": id_municipio, "nombre": nombre};
  }
}
