import 'package:barvaldeorras/modelo/item_pedido.dart';
import 'package:barvaldeorras/modelo/pedido.dart';
import 'package:flutter/material.dart';

class CrearPedidoViewModel extends ChangeNotifier {
  String _nombreMesa = "";
  final List<ItemPedido> _items = [];

  String get nombreMesa => _nombreMesa;
  List<ItemPedido> get items => List.unmodifiable(_items);
  double get total => _items.fold(0, (sum, item) => sum + item.total);

  void setNombreMesa(String value) {
    _nombreMesa = value;
    notifyListeners();
  }

  void setItems(List<ItemPedido> nuevos) {
    _items
      ..clear()
      ..addAll(nuevos);
    notifyListeners();
  }

  late Pedido pedidoConfirmado;

  void confirmarPedido() {
    pedidoConfirmado = Pedido(
      nombreMesa: _nombreMesa,
      items: List.from(_items),
    );
    notifyListeners();
  }
}
