import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_unidad1/core/models/riesgoModel.dart';
import 'package:proyecto_unidad1/core/services/apiRiesgo.dart';
import 'package:proyecto_unidad1/locator.dart';

class CRUDRiesgo extends ChangeNotifier {
  ApiRiesgo _api = locator<ApiRiesgo>();

  List<Riesgo> products;

  Future<List<Riesgo>> fetchProducts() async {
    var result = await _api.getDataCollection();
    products = result.documents
        .map((doc) => Riesgo.fromMap(doc.data, doc.documentID))
        .toList();
    return products;
  }

  Stream<QuerySnapshot> fetchProductsAsStream() {
    return _api.streamDataCollection();
  }

  Future<Riesgo> getProductById(String id) async {
    var doc = await _api.getDocumentById(id);
    return Riesgo.fromMap(doc.data, doc.documentID);
  }

  Future removeProduct(String id) async {
    await _api.removeDocument(id);
    return;
  }

  Future updateProduct(Riesgo data, String id) async {
    await _api.updateDocument(data.toJson(), id);
    return;
  }

  Future addProduct(Riesgo data) async {
    var result = await _api.addDocument(data.toJson());
    return;
  }

  Future agregarVarios(List<Riesgo> data) async {
    for (Riesgo municipio in data) {
      var result = await _api.addDocument(municipio.toJson());
    }
    return;
  }

  Stream<QuerySnapshot> filtroRiesgo(String riesgo) {
    return _api.filtroNombre(riesgo);
  }
}
