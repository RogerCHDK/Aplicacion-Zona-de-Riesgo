import 'package:flutter/material.dart';
import 'package:proyecto_unidad1/core/models/municipioModel.dart';

class MunicipioCard extends StatelessWidget {
  //Esta clase es la que muestra toda la informacion del producto
  final Municipio municipioDetails;

  MunicipioCard({@required this.municipioDetails});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //creo que este es como un boton
      onTap: () {
        /*
        Navigator.push(
            //cuando es presionado nos lleva a la pantalla de los detalles del producto
            context,
            MaterialPageRoute(
                builder: (_) => ProductDetails(product: productDetails)));*/
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
                  tag: municipioDetails.id,
                  child: Image.asset(
                    'assets/img/computer.jpg',
                    height: MediaQuery.of(context).size.height * 0.35,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        municipioDetails.nombre,
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 22,
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        municipioDetails.significado,
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
