import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_unidad1/core/models/filtroModel.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDFiltro.dart';

class SeedFiltros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final filtroProvider = Provider.of<CRUDFiltro>(context);
    List<Filtro> lista_filtro = [
      Filtro(
        municipio: "Valle de Bravo",
        nombre: "Cuerpo Agua",
        capacidad: "403,000,000",
      ),
      Filtro(
        municipio: "Villa Victoria",
        nombre: "Cuerpo Agua",
        capacidad: "218,000,000",
      ),
      Filtro(
        municipio: "Huapango",
        nombre: "Cuerpo Agua",
        capacidad: "121,300,000",
      ),
      Filtro(
          municipio: "Ecatepec de Morelos",
          nombre: "Mas Poblados",
          poblacion: "1,656,107"),
      Filtro(
          municipio: "Netzahualcóyotl",
          nombre: "Mas Poblados",
          poblacion: "1,110,565"),
      Filtro(
          municipio: "Naucalpan de Juárez",
          nombre: "Mas Poblados",
          poblacion: "833,779"),
      Filtro(municipio: "Toluca", nombre: "Mas Poblados", poblacion: "819,561"),
      Filtro(
          municipio: "Tlalneplanta",
          nombre: "Mas Poblados",
          poblacion: "664,225"),
      Filtro(
          municipio: "Tlatlaya", nombre: "Mas Extensos", superficie: "798.92"),
      Filtro(
          municipio: "Luvianos", nombre: "Mas Extensos", superficie: "702.13"),
      Filtro(
          municipio: "Tejupilco", nombre: "Mas Extensos", superficie: "625.43"),
      Filtro(
          municipio: "Papalotla", nombre: "Menos Extensos", superficie: "3.59"),
      Filtro(
          municipio: "Jaltenco", nombre: "Menos Extensos", superficie: "3.97"),
      Filtro(
          municipio: "Almoloya del Rio",
          nombre: "Menos Extensos",
          superficie: "6.44"),
      Filtro(
          municipio: "Chiconcuac",
          nombre: "Menos Extensos",
          superficie: "6.94"),
      Filtro(
        municipio: "Naucalpan",
        nombre: "Industrializado",
      ),
      Filtro(
        municipio: "Tlalnepantla",
        nombre: "Industrializado",
      ),
      Filtro(
        municipio: "Ecatepec",
        nombre: "Industrializado",
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Agregar Filtro'),
        ),
      ),
      body: RaisedButton(
        onPressed: () async {
          await filtroProvider.agregarVarios(lista_filtro);
        },
        child: Text('Agregar', style: TextStyle(color: Colors.white)),
        color: Colors.blue,
      ),
    );
  }
}
