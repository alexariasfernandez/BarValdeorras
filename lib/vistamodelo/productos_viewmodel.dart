import 'package:barvaldeorras/modelo/item_pedido.dart';
import 'package:barvaldeorras/modelo/producto.dart';

class ProductosViewmodel {
  final List<Producto> carta = [
    Producto(nombre: "Café", precio: 1.2),
    Producto(nombre: "Refrescos", precio: 1.8),
    Producto(nombre: "Pincho tortilla", precio: 2.5),
    Producto(nombre: "Patatas Bravas", precio: 2.5),
    Producto(nombre: "Patatas ali-oli", precio: 2.5),
    Producto(nombre: "Agua(Con/Sin gas)", precio: 1),
    Producto(nombre: "Cerveza", precio: 2.2),
  ];
  final Map<Producto, int> seleccionTemp = {};
  void seleccionar(Producto p) {
    seleccionTemp[p] = (seleccionTemp[p] ?? 0) + 1;
  }

  List<ItemPedido> construirSeleccion() => seleccionTemp.entries
      .map((e) => ItemPedido(producto: e.key, cantidad: e.value))
      .toList();
}
