import 'package:flutter/cupertino.dart';

class Filtro {
  String uid;
  String id;
  String nombre;
  String significado;
  String cabeceraMunicipal;
  String superficie;
  String altitud;
  String clima;

  Filtro(
      {this.uid,
      @required this.id,
      @required this.nombre,
      @required this.significado,
      @required this.cabeceraMunicipal,
      @required this.superficie,
      @required this.altitud,
      @required this.clima});

  Filtro.fromMap(Map snapshot, String uid)
      : uid = uid ?? '',
        id = snapshot['id'] ?? '',
        nombre = snapshot['nombre'] ?? '',
        significado = snapshot['significado'] ?? '',
        cabeceraMunicipal = snapshot['cabeceraMunicipal'] ?? '',
        superficie = snapshot['superficie'] ?? '',
        altitud = snapshot['altitud'] ?? '',
        clima = snapshot['clima'] ?? '';

  toJson() {
    return {
      "id": id,
      "nombre": nombre,
      "significado": significado,
      "cabeceraMunicipal": cabeceraMunicipal,
      "superficie": superficie,
      "altitud": altitud,
      "clima": clima,
    };
  }
}
