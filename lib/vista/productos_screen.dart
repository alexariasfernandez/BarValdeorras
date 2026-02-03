import 'package:barvaldeorras/vistamodelo/productos_viewmodel.dart';
import 'package:flutter/material.dart';

/// Pantalla para seleccionar productos
class ProductosScreen extends StatefulWidget {
  final ProductosViewmodel vm;

  const ProductosScreen({required this.vm, super.key});

  @override
  State<ProductosScreen> createState() => _ProductosScreenState();
}
/// Estado de la pantalla de productos
class _ProductosScreenState extends State<ProductosScreen> {
  final ProductosViewmodel vm = ProductosViewmodel();
/// Construye la interfaz de la pantalla de productos
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Seleccionar productos')),
      body: ListView(
        children: vm.carta
        /// Genera una lista de productos a partir de la carta
            .map(
              (p) => ListTile(
                title: Text(p.nombre),
                trailing: Text('€${p.precio.toStringAsFixed(2)}'),
                onTap: () {
                  setState(() => vm.seleccionar(p));
                },
              ),
            )
            .toList(),
      ),
      /// Botón para confirmar la selección de productos
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.check),
        onPressed: () {
          Navigator.pop(context, vm.construirSeleccion());
        },
      ),
    );
  }
}
