import 'package:flutter/cupertino.dart';

class Municipio {
  String id;
  String nombre;
  String significado;
  String cabeceraMunicipal;
  String superficie;
  String altitud;

  Municipio(
      {@required this.id,
      @required this.nombre,
      @required this.significado,
      @required this.cabeceraMunicipal,
      @required this.superficie,
      @required this.altitud});

  Municipio.fromMap(Map snapshot)
      : id = snapshot['nombre'] ?? '',
        nombre = snapshot['nombre'] ?? '',
        significado = snapshot['significado'] ?? '',
        cabeceraMunicipal = snapshot['cabeceraMunicipal'] ?? '',
        superficie = snapshot['superficie'] ?? '',
        altitud = snapshot['altitud'] ?? '';

  toJson() {
    return {
      "id": id,
      "nombre": nombre,
      "significado": significado,
      "cabecera_municipal": cabeceraMunicipal,
      "superficie": superficie,
      "altitud": altitud,
    };
  }
}
