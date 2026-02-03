import 'package:barvaldeorras/vista/home_view.dart';
import 'package:barvaldeorras/vista/resumen_screen.dart';
import 'package:flutter/material.dart';

/// entrada de la aplicacion
/// lanza el widget raiz de la app
void main() {
  runApp(barValdeorras());
}

/// widget raiz de la aplicacion
/// configura las rutas y la pantalla inicial
class barValdeorras extends StatelessWidget {
  const barValdeorras({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      ///titulo de la aplicacion
      title: 'Bar MVVM',
      ///definicion de las rutas
      routes: {'/resumen': (_) => const ResumenScreen()},
      ///pantalla inicial
      home: const HomeView(),
    );
  }
}
