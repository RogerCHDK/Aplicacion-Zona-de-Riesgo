import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proyecto_unidad1/municipios/views/addMunicipio.dart';
import 'package:proyecto_unidad1/municipios/views/homeViewMunicipios.dart';
import 'package:proyecto_unidad1/ui/views/addProduct.dart';
import 'package:proyecto_unidad1/ui/views/homeView.dart';
import 'package:proyecto_unidad1/ui/views/productDetails.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        //return MaterialPageRoute(builder: (_) => HomeView());
        return MaterialPageRoute(builder: (_) => HomeViewMunicipio());
      case '/addProduct':
        return MaterialPageRoute(builder: (_) => AddProduct());
      case '/productDetails':
        return MaterialPageRoute(builder: (_) => ProductDetails());
      case '/addMunicipio':
        return MaterialPageRoute(builder: (_) => AddMunicipio());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
