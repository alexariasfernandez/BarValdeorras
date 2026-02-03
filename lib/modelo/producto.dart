///Modelo que representa un producto del bar
class Producto {
  final String nombre;
  final double precio;

  /// Constructor del producto
  Producto({required this.nombre, required this.precio});
  /// Sobrescribir operador de igualdad para comparar productos
  @override
  bool operator ==(Object other) {
    /// Verifica si son el mismo objeto
    if (identical(this, other)) return true;
    return other is Producto &&
        other.nombre == nombre &&
        other.precio == precio;
  }
  /// Sobrescribir hashCode para consistencia con el operador ==
  @override
  int get hashCode => nombre.hashCode ^ precio.hashCode;
}
