import 'package:barvaldeorras/modelo/item_pedido.dart';
import 'package:barvaldeorras/modelo/pedido.dart';
import 'package:barvaldeorras/modelo/producto.dart';
import 'package:flutter/material.dart';

class HomeViewmodel extends ChangeNotifier {
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
  void addPedido(Pedido pedido) {
    pedidos.add(pedido);
    notifyListeners();
  }
}
