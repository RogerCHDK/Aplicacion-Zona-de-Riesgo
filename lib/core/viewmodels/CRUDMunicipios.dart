import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:proyecto_unidad1/core/models/municipioModel.dart';
import 'package:proyecto_unidad1/core/services/apiMunicipios.dart';
import 'package:proyecto_unidad1/locator.dart';

class CRUDMunicipios extends ChangeNotifier {
  ApiMunicipios _api = locator<ApiMunicipios>();

  List<Municipio> products;

  Future<List<Municipio>> fetchProducts() async {
    var result = await _api.getDataCollection();
    products =
        result.documents.map((doc) => Municipio.fromMap(doc.data)).toList();
    return products;
  }

  Stream<QuerySnapshot> fetchProductsAsStream() {
    return _api.streamDataCollection();
  }

  Future<Municipio> getProductById(String id) async {
    var doc = await _api.getDocumentById(id);
    return Municipio.fromMap(doc.data);
  }

  Future removeProduct(String id) async {
    await _api.removeDocument(id);
    return;
  }

  Future updateProduct(Municipio data, String id) async {
    await _api.updateDocument(data.toJson(), id);
    return;
  }

  Future addProduct(Municipio data) async {
    var result = await _api.addDocument(data.toJson());
    return;
  }
}
