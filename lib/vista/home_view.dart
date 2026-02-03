import 'package:barvaldeorras/modelo/pedido.dart';
import 'package:barvaldeorras/vista/crear_pedido_screen.dart';
import 'package:barvaldeorras/vistamodelo/home_viewmodel.dart';
import 'package:flutter/material.dart';

/// Vista principal que muestra la lista de pedidos
class HomeView extends StatefulWidget {
  const HomeView({super.key});
  State<HomeView> createState() => _HomeViewState();
}
/// Estado de la vista principal
class _HomeViewState extends State<HomeView> {
  final HomeViewmodel vm = HomeViewmodel();
/// Construye la interfaz de la vista principal
  @override
  Widget build(BuildContext context) {
    /// Estructura de la pantalla principal
    return Scaffold(
      appBar: AppBar(title: const Text("Pedidos"),
      ),
      /// Botón flotante para añadir un nuevo pedido
      body: Container(
        color: const Color.fromARGB(36, 153, 113, 151),
        child: Semantics(
          label: "Botón para añadir productos",
          button: true,
          child: Tooltip(
            message: "Botón para añadir productos",
            child: IconButton(
            icon: const Icon(Icons.add),
            iconSize: 40,
            /// Acción al pulsar el botón de añadir pedido
        onPressed: () async {
          final resultado = await Navigator.push(
            context,
            /// Navega a la pantalla para crear un nuevo pedido
            MaterialPageRoute(builder: (_) => const CrearPedidoScreen()),
          );
          if (!mounted) return;
          if (!resultado is Pedido) {
            setState(() => vm.addPedido(resultado));
       }
        }
          ),
          )
          
        ),
      ),
    );
  }
}
