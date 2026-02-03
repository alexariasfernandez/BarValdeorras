import 'package:barvaldeorras/modelo/item_pedido.dart';
import 'package:barvaldeorras/modelo/pedido.dart';
import 'package:flutter/material.dart';

/// ViewModel para la creación de un pedido
class CrearPedidoViewModel extends ChangeNotifier {
  String _nombreMesa = "";
  final List<ItemPedido> _items = [];

  String get nombreMesa => _nombreMesa;
  List<ItemPedido> get items => List.unmodifiable(_items);
  double get total => _items.fold(0, (sum, item) => sum + item.total);
/// Establece el nombre o mesa del pedido
  void setNombreMesa(String value) {
    _nombreMesa = value;
    notifyListeners();
  }
/// Establece los items del pedido
  void setItems(List<ItemPedido> nuevos) {
    _items
      ..clear()
      ..addAll(nuevos);
    notifyListeners();
  }
/// Confirma el pedido creando una instancia de Pedido
  late Pedido pedidoConfirmado;
/// Confirma el pedido creando una instancia de Pedido
  void confirmarPedido() {
    pedidoConfirmado = Pedido(
      nombreMesa: _nombreMesa,
      items: List.from(_items),
    );
    notifyListeners();
  }
}
