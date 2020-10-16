import 'package:flutter/cupertino.dart';

class Filtro {
  String uid;
  String municipio;
  String nombre;
  String altitud;
  String longitud;
  String capacidad;
  String poblacion;
  String superficie;

  Filtro(
      {this.uid,
      this.municipio,
      this.nombre,
      this.altitud,
      this.longitud,
      this.capacidad,
      this.poblacion,
      this.superficie});

  Filtro.fromMap(Map snapshot, String uid)
      : uid = uid ?? '',
        municipio = snapshot['municipio'] ?? '',
        nombre = snapshot['nombre'] ?? '',
        altitud = snapshot['altitud'] ?? '',
        longitud = snapshot['longitud'] ?? '',
        superficie = snapshot['superficie'] ?? '',
        capacidad = snapshot['capacidad'] ?? '',
        poblacion = snapshot['poblacion'] ?? '';

  toJson() {
    return {
      "municipio": municipio,
      "nombre": nombre,
      "altitud": altitud,
      "longitud": longitud,
      "superficie": superficie,
      "capacidad": capacidad,
      "poblacion": poblacion,
    };
  }
}
