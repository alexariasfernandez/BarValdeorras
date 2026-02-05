import 'package:barvaldeorras/modelo/producto.dart';

/// Modelo que representa un item en un pedido
class ItemPedido {
  final Producto producto;
  final int cantidad;
  /// Constructor del item del pedido
  ItemPedido({required this.producto, required this.cantidad});

  /// Calcula el total del item (precio * cantidad)
  double get total => producto.precio * cantidad;

  /// Método para crear una copia del item con modificaciones opcionales
  ItemPedido copyWith({Producto? producto, int? cantidad}) {
    return ItemPedido(
      producto: producto ?? this.producto,
      cantidad: cantidad ?? this.cantidad,
    );
  }

  /// Sobrescribir operador de igualdad para comparar items
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemPedido &&
          runtimeType == other.runtimeType &&
          producto == other.producto &&
          cantidad == other.cantidad;

  /// Sobrescribir hashCode para consistencia con el operador ==
  @override
  int get hashCode => producto.hashCode ^ cantidad.hashCode;
}
