import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proyecto_unidad1/municipios/views/addMunicipio.dart';
import 'package:proyecto_unidad1/municipios/views/homeViewMunicipios.dart';
import 'package:proyecto_unidad1/riesgo/views/addRiesgo.dart';
import 'package:proyecto_unidad1/ui/views/addProduct.dart';
import 'package:proyecto_unidad1/ui/views/homeView.dart';
import 'package:proyecto_unidad1/ui/views/productDetails.dart';
import 'package:proyecto_unidad1/widgets/my_tab_bar.dart';
import 'package:proyecto_unidad1/widgets/my_tab_bar_cupertino.dart';
import 'package:proyecto_unidad1/user/login_page.dart';

class Ruta {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/principal':
        return MaterialPageRoute(builder: (_) => MyTabBar());
      case '/principalConsultor':
        return MaterialPageRoute(builder: (_) => MyTabBarCupertino());
      case '/municipio':
        return MaterialPageRoute(builder: (_) => HomeViewMunicipio());
      case '/producto':
        return MaterialPageRoute(builder: (_) => HomeView());
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
