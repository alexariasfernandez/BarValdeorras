import 'package:barvaldeorras/vista/home_view.dart';
import 'package:barvaldeorras/vista/resumen_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(barValdeorras());
}

class barValdeorras extends StatelessWidget {
  const barValdeorras({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bar MVVM',
      routes: {'/resumen': (_) => const ResumenScreen()},
      home: const HomeView(),
    );
  }
}
