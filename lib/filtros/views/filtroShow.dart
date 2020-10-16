import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_unidad1/core/models/filtroModel.dart';
import 'package:proyecto_unidad1/core/viewmodels/CRUDFiltro.dart';

class FiltroShow extends StatelessWidget {
  final Filtro filtroDetails;
  FiltroShow({@required this.filtroDetails});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final filtroProvider = Provider.of<CRUDFiltro>(context);

    final id = Text(
      'ID: ${this.filtroDetails.uid}',
      style: TextStyle(
          fontFamily: 'Lato', fontSize: 16.0, fontWeight: FontWeight.bold),
    );

    final nombre = Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Municipio: ${this.filtroDetails.municipio}',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ]));

    final altitud = Text(
      'Altitud: ${this.filtroDetails.altitud}',
      style: TextStyle(
          fontFamily: 'Lato', fontSize: 16.0, fontWeight: FontWeight.bold),
    );

    final capacidad = Text(
      'Capacidad: ${this.filtroDetails.capacidad}',
      style: TextStyle(
          fontFamily: 'Lato', fontSize: 16.0, fontWeight: FontWeight.bold),
    );

    final longitud = Text(
      'Longitud: ${this.filtroDetails.longitud}',
      style: TextStyle(
          fontFamily: 'Lato', fontSize: 16.0, fontWeight: FontWeight.bold),
    );

    final poblacion = Text(
      'Poblacion: ${this.filtroDetails.poblacion}',
      style: TextStyle(
          fontFamily: 'Lato', fontSize: 16.0, fontWeight: FontWeight.bold),
    );

    final superficie = Text(
      'Superficie: ${this.filtroDetails.superficie}',
      style: TextStyle(
          fontFamily: 'Lato', fontSize: 16.0, fontWeight: FontWeight.bold),
    );
    final card = Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      width: screenWidth * 0.65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0))
          ]),
      child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[id, nombre],
          )),
    );

    final cardAltitud = Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      width: screenWidth * 0.65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0))
          ]),
      child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[id, nombre, altitud],
          )),
    );

    final cardCapacidad = Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      width: screenWidth * 0.65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0))
          ]),
      child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[id, nombre, capacidad],
          )),
    );

    final cardLongitud = Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      width: screenWidth * 0.65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0))
          ]),
      child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[id, nombre, longitud],
          )),
    );

    final cardPoblacion = Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      width: screenWidth * 0.65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0))
          ]),
      child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[id, nombre, poblacion],
          )),
    );

    final cardSuperficie = Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      width: screenWidth * 0.65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0))
          ]),
      child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[id, nombre, superficie],
          )),
    );

    switch (filtroDetails.nombre) {
      case "Cuerpo Agua":
        return Stack(
          alignment: Alignment(0.1, 0.8),
          children: <Widget>[cardCapacidad],
        );
      case "Mas Poblados":
        return Stack(
          alignment: Alignment(0.1, 0.8),
          children: <Widget>[cardPoblacion],
        );
      case "Mas Extensos":
        return Stack(
          alignment: Alignment(0.1, 0.8),
          children: <Widget>[cardSuperficie],
        );
      case "Menos Extensos":
        return Stack(
          alignment: Alignment(0.1, 0.8),
          children: <Widget>[cardSuperficie],
        );
      case "Industrializado":
        return Stack(
          alignment: Alignment(0.1, 0.8),
          children: <Widget>[card],
        );
    }
  }
}
