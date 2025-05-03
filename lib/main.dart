import 'package:flutter/material.dart';
import 'package:ramirezwidgets/pantalla_uno.dart';
import 'package:ramirezwidgets/pantalla_dos.dart';
import 'package:ramirezwidgets/pantalla_tres.dart';
import 'package:ramirezwidgets/pantalla_cuatro.dart';
import 'package:ramirezwidgets/pantalla_cinco.dart';
import 'package:ramirezwidgets/pantalla_seis.dart';
import 'package:ramirezwidgets/pantalla_siete.dart';
import 'package:ramirezwidgets/pantalla_ocho.dart';
import 'package:ramirezwidgets/pantalla_nueve.dart';
import 'package:ramirezwidgets/pantalla_diez.dart';
import 'package:ramirezwidgets/pantalla_once.dart';

void main() => runApp(WidgetsApp());

class WidgetsApp extends StatelessWidget {
  const WidgetsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre Paginas Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla9': (context) => const PantallaNueve(),
        '/pantalla10': (context) => const PantallaDiez(),
        '/pantalla11': (context) => const PantallaOnce(),
      },
    );
  }
}
