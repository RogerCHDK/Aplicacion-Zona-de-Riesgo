import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:proyecto_unidad1/core/models/filtroModel.dart';
import 'package:proyecto_unidad1/core/services/apiFiltro.dart';
import 'package:proyecto_unidad1/locator.dart';

class CRUDFiltro extends ChangeNotifier {
  ApiFiltro _api = locator<ApiFiltro>();

  List<Filtro> products;

  Future<List<Filtro>> fetchProducts() async {
    var result = await _api.getDataCollection();
    products = result.documents
        .map((doc) => Filtro.fromMap(doc.data, doc.documentID))
        .toList();
    return products;
  }

  Stream<QuerySnapshot> fetchProductsAsStream() {
    return _api.streamDataCollection();
  }

  Future<Filtro> getProductById(String id) async {
    var doc = await _api.getDocumentById(id);
    return Filtro.fromMap(doc.data, doc.documentID);
  }

  Future removeProduct(String id) async {
    await _api.removeDocument(id);
    return;
  }

  Future updateProduct(Filtro data, String id) async {
    await _api.updateDocument(data.toJson(), id);
    return;
  }

  Future addProduct(Filtro data) async {
    var result = await _api.addDocument(data.toJson());
    return;
  }

  Future agregarVarios(List<Filtro> data) async {
    for (Filtro municipio in data) {
      var result = await _api.addDocument(municipio.toJson());
    }
    return;
  }

  Stream<QuerySnapshot> filtroRiesgo(String filtro) {
    return _api.filtroNombre(filtro);
  }
}
