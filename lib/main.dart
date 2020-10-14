import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDModel.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDMunicipios.dart';
import 'package:proyecto_unidad1/locator.dart';
import 'package:proyecto_unidad1/ui/router.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => locator<CRUDModel>()),
        ChangeNotifierProvider(builder: (_) => locator<CRUDMunicipios>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        title: 'Product App',
        theme: ThemeData(),
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}
