import 'package:barvaldeorras/modelo/item_pedido.dart';

class Pedido {
  final String nombreMesa;
  final List<ItemPedido> items;

  Pedido({required this.nombreMesa, required this.items});
  double get total => items.fold(0, (sum, item) => sum + item.total);
  int get totalProductos => items.fold(0, (sum, item) => sum + item.cantidad);
}
