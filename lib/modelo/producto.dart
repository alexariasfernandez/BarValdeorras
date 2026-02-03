class Producto {
  final String nombre;
  final double precio;

  Producto({required this.nombre, required this.precio});
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Producto &&
        other.nombre == nombre &&
        other.precio == precio;
  }

  @override
  int get hashCode => nombre.hashCode ^ precio.hashCode;
}
