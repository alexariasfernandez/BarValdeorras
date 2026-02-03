import 'package:barvaldeorras/modelo/item_pedido.dart';

/// Modelo que representa un pedido
class Pedido {
  final String nombreMesa;
  final List<ItemPedido> items;

  /// Constructor del pedido
  Pedido({required this.nombreMesa, required this.items});
  /// Calcula el total del pedido sumando los totales de los items
  double get total => items.fold(0, (sum, item) => sum + item.total);
  /// Calcula el total de productos en el pedido
  int get totalProductos => items.fold(0, (sum, item) => sum + item.cantidad);
}
