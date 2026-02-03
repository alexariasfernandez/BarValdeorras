import 'package:barvaldeorras/modelo/producto.dart';

class ItemPedido {
  final Producto producto;
  final int cantidad;

  ItemPedido({required this.producto, required this.cantidad});

  double get total => producto.precio * cantidad;

  ItemPedido copyWith({Producto? producto, int? cantidad}) {
    return ItemPedido(
      producto: producto ?? this.producto,
      cantidad: cantidad ?? this.cantidad,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemPedido &&
          runtimeType == other.runtimeType &&
          producto == other.producto &&
          cantidad == other.cantidad;

  @override
  int get hashCode => producto.hashCode ^ cantidad.hashCode;
}
