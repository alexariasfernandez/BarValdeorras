import 'package:barvaldeorras/modelo/pedido.dart';
import 'package:barvaldeorras/vista/crear_pedido_screen.dart';
import 'package:barvaldeorras/vistamodelo/home_viewmodel.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeViewmodel vm = HomeViewmodel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pedidos"),
      ),
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
        onPressed: () async {
          final resultado = await Navigator.push(
            context,
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
