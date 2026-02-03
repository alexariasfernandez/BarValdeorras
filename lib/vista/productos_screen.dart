import 'package:barvaldeorras/vistamodelo/productos_viewmodel.dart';
import 'package:flutter/material.dart';

class ProductosScreen extends StatefulWidget {
  final ProductosViewmodel vm;

  const ProductosScreen({required this.vm, super.key});

  @override
  State<ProductosScreen> createState() => _ProductosScreenState();
}

class _ProductosScreenState extends State<ProductosScreen> {
  final ProductosViewmodel vm = ProductosViewmodel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Seleccionar productos')),
      body: ListView(
        children: vm.carta
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.check),
        onPressed: () {
          Navigator.pop(context, vm.construirSeleccion());
        },
      ),
    );
  }
}
