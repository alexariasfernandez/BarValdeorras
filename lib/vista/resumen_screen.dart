import 'package:barvaldeorras/modelo/pedido.dart';
import 'package:flutter/material.dart';

/// Pantalla que muestra el resumen del pedido
class ResumenScreen extends StatelessWidget {
  const ResumenScreen({super.key});

/// Construye la interfaz de la pantalla de resumen
  @override
  Widget build(BuildContext context) {
    /// Obtiene el pedido pasado como argumento
    final Pedido pedido = ModalRoute.of(context)!.settings.arguments as Pedido;
    return Scaffold(
      appBar: AppBar(title: const Text("Resumen del pedido")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mesa: ${pedido.nombreMesa}",
              style: const TextStyle(fontSize: 13),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView(
                children: pedido.items
                /// Genera una lista de los items del pedido
                    .map(
                      (e) => ListTile(
                        title: Text("${e.producto.nombre} x ${e.cantidad}"),
                        trailing: Text("${e.total.toStringAsFixed(2)}"),
                      ),
                    )
                    .toList(),
              ),
            ),
            Text(
              "Total final: €${pedido.total.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 15),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Volver"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
