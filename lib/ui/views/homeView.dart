import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_unidad1/core/models/productModel.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDModel.dart';
import 'package:proyecto_unidad1/ui/widgets/productCard.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Product> products;

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<CRUDModel>(
        context); //aqui mando a llamar a la instancia del modelo a usar

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        //este es el boton con la accion de llevarnos al formulario para cear productos
        onPressed: () {
          Navigator.pushNamed(context, '/addProduct');
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Center(child: Text('Home')),
      ),
      body: Container(
        child: StreamBuilder(
            stream: productProvider
                .fetchProductsAsStream(), //aqui estamos escuchando para que cada que haya un cambio en la base de datos se vea reflejado
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                products = snapshot.data.documents
                    .map((doc) => Product.fromMap(doc.data, doc.documentID))
                    .toList();
                return ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (buildContext, index) =>
                      ProductCard(productDetails: products[index]),
                );
              } else {
                return Text('fetching');
              }
            }),
      ),
    );
    ;
  }
}
