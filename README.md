# 🍻 Bar Valdeorras – Gestión de Pedidos

## 📄 Descripción

**Bar Valdeorras** es una aplicación móvil desarrollada con **Flutter** que permite gestionar los pedidos de un bar de forma sencilla.  
La aplicación sigue el patrón arquitectónico **MVVM**, separando claramente la lógica de negocio, la interfaz de usuario y los modelos de datos.

El usuario puede crear pedidos asociados a una mesa, seleccionar productos de una carta, visualizar el total del pedido y consultar un resumen final.

## 🛠️ Tecnologías usadas

- **Flutter**
- **Dart**
- **Material Design**
- **Patrón MVVM (Model–View–ViewModel)**


## ⭐ Características principales

- 📋 Visualización de una lista de pedidos
- ➕ Creación de nuevos pedidos
- 🪑 Asociación de pedidos a una mesa o nombre
- 🍽️ Selección de productos desde una carta
- 🔢 Gestión de cantidades por producto
- 💶 Cálculo automático del total del pedido
- ✅ Pantalla de resumen del pedido
- ⚠️ Validaciones con **SnackBar** informativos
- ♿ Uso de **Tooltip** y **Semantics** para mejorar la accesibilidad


## 🧱 Arquitectura

El proyecto está estructurado siguiendo el patrón **MVVM**:

- **Modelo**: `Producto`, `ItemPedido`, `Pedido`
- **Vista**: Pantallas (`HomeView`, `CrearPedidoScreen`, `ProductosScreen`, `ResumenScreen`)
- **ViewModel**: Gestión del estado y la lógica (`HomeViewModel`, `CrearPedidoViewModel`, `ProductosViewModel`)

Esta separación mejora la mantenibilidad y escalabilidad del proyecto.


## ▶️ Funcionamiento básico

1. Desde la pantalla principal se visualizan los pedidos existentes.
2. Se puede crear un nuevo pedido pulsando el botón de añadir.
3. Se introduce el nombre de la mesa.
4. Se seleccionan productos de la carta.
5. Se valida el pedido antes de confirmarlo.
6. Se muestra un resumen con el total final.


## 📌 Autor

Proyecto desarrollado como práctica de **Flutter / Desarrollo de interfaces**.