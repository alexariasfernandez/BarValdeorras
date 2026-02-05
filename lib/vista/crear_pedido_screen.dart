import 'package:barvaldeorras/vista/productos_screen.dart';
import 'package:barvaldeorras/vistamodelo/crear_pedido_viewmodel.dart';
import 'package:barvaldeorras/vistamodelo/productos_viewmodel.dart';
import 'package:flutter/material.dart';

// Pantalla para crear un nuevo pedido
class CrearPedidoScreen extends StatefulWidget {
  const CrearPedidoScreen({super.key});

  @override
  State<CrearPedidoScreen> createState() => _CrearPedidoScreenState();
}

class _CrearPedidoScreenState extends State<CrearPedidoScreen> {
  /// ViewModel del pedido
  final CrearPedidoViewModel vm = CrearPedidoViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nuevo pedido")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Campo nombre de la mesa
            TextField(
              decoration: const InputDecoration(labelText: "Mesa o nombre"),
              onChanged: vm.setNombreMesa,
            ),

            const SizedBox(height: 20),

            /// Botón elegir productos
            Tooltip(
              message: "Botón para elegir productos",
              child: ElevatedButton(
                onPressed: () async {
                  final resultado = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ProductosScreen(vm: ProductosViewmodel()),
                    ),
                  );

                  if (!mounted) return;

                  if (resultado != null) {
                    vm.setItems(resultado);
                    setState(() {});
                  }
                },
                child: const Text("Elegir Productos"),
              ),
            ),

            const SizedBox(height: 10),

            /// Botón confirmar pedido
            Tooltip(
              message: "Botón para confirmar el pedido",
              child: ElevatedButton(
                onPressed: () {
                  /// VALIDACIÓN 1: nombre de mesa vacío
                  if (vm.nombreMesa.trim().isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      //SNACKBAR 1
                      const SnackBar(
                        content: Text("Debes introducir el nombre de la mesa"),
                      ),
                    );
                    return;
                  }

                  /// VALIDACIÓN 2: no hay productos
                  if (vm.items.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      //SNACKBAR 2
                      const SnackBar(
                        content: Text("Añade productos antes de confirmar"),
                      ),
                    );
                    return;
                  }

                  vm.confirmarPedido();
                  Navigator.pop(context, vm.pedidoConfirmado);
                },
                child: const Text("Confirmar pedido"),
              ),
            ),

            const SizedBox(height: 15),

            Text("Total: €${vm.total.toStringAsFixed(2)}"),

            const SizedBox(height: 15),

            /// Lista de productos del pedido
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
