import 'package:barvaldeorras/vista/productos_screen.dart';
import 'package:barvaldeorras/vistamodelo/crear_pedido_viewmodel.dart';
import 'package:barvaldeorras/vistamodelo/productos_viewmodel.dart';
import 'package:flutter/material.dart';

// Pantalla para crear un nuevo pedido
class CrearPedidoScreen extends StatefulWidget {
  // Constructor del screen
  const CrearPedidoScreen({super.key});
  
  @override
  State<CrearPedidoScreen> createState() => _CrearPedidoScreenState();
}

/// Estado del screen para crear un nuevo pedido
class _CrearPedidoScreenState extends State<CrearPedidoScreen> {
  /// Instancia del ViewModel asociado
  final CrearPedidoViewModel vm = CrearPedidoViewModel();
  /// Construye la interfaz del screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nuevo pedido")),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Mesa o nombre"),
              onChanged: vm.setNombreMesa,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final resultado = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductosScreen(vm: ProductosViewmodel()),
                  ),
                );
                if (!mounted) return;
                if (resultado != null) vm.setItems(resultado);
                setState(() {});
              },
              child: const Text("Elegir Productos"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (vm.items.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Añade productos antes de confirmar"),
                    ),
                  );
                  return;
                }
                vm.confirmarPedido();
                Navigator.pop(context, true);
              },
              child: const Text("Confirmar pedido"),
            ),
            const SizedBox(height: 15),
            Text("Total: €${vm.total.toStringAsFixed(2)}"),
            const SizedBox(height: 15),
            Expanded(
              child: ListView(
                children: vm.items
                    .map(
                      (e) => ListTile(
                        title: Text("${e.producto.nombre} x ${e.cantidad}"),
                        trailing: Text("€${e.total.toStringAsFixed(2)}"),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
