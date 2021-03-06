import 'package:flutter/material.dart';
import 'package:proyecto_unidad1/core/models/productModel.dart';
import 'package:proyecto_unidad1/ui/views/productDetails.dart';

class ProductCard extends StatelessWidget {
  //Esta clase es la que muestra toda la informacion del producto
  final Product productDetails;

  ProductCard({@required this.productDetails});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //creo que este es como un boton
      onTap: () {
        Navigator.push(
            //cuando es presionado nos lleva a la pantalla de los detalles del producto
            context,
            MaterialPageRoute(
                builder: (_) => ProductDetails(product: productDetails)));
      },
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Card(
          elevation: 5,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.45,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              children: <Widget>[
                Hero(
                  tag: productDetails.id,
                  child: Image.asset(
                    'assets/img/${productDetails.img}.jpg',
                    height: MediaQuery.of(context).size.height * 0.35,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        productDetails.name,
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 22,
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        '${productDetails.price} \$',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 22,
                            fontStyle: FontStyle.italic,
                            color: Colors.orangeAccent),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
