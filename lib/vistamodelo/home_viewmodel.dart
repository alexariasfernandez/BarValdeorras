import 'package:barvaldeorras/modelo/item_pedido.dart';
import 'package:barvaldeorras/modelo/pedido.dart';
import 'package:barvaldeorras/modelo/producto.dart';
import 'package:flutter/material.dart';

/// ViewModel para la pantalla principal que maneja la lista de pedidos
class HomeViewmodel extends ChangeNotifier {
  /// Lista de pedidos actuales
    
  final List<Pedido> pedidos = [
    Pedido(
      nombreMesa: 'Mesa 1',
      items: [
        ItemPedido(
          producto: Producto(nombre: 'Café', precio: 1.5),
          cantidad: 2,
        ),
      ],
    ),
    /// Segundo pedido de ejemplo
    Pedido(
      nombreMesa: 'Mesa 2',
      items: [
        ItemPedido(
          producto: Producto(nombre: 'Cerveza', precio: 2.6),
          cantidad: 3,
        ),
        ItemPedido(
          producto: Producto(nombre: 'Bravas', precio: 4.5),
          cantidad: 2,
        ),
      ],
    ),
  ];
  /// Añade un nuevo pedido a la lista y notifica a los oyentes
  void addPedido(Pedido pedido) {
    pedidos.add(pedido);
    notifyListeners();
  }
  /// Valida si la lista de pedidos está vacía
  bool pedidovacio() {
    return pedidos.isEmpty;
  }
}
