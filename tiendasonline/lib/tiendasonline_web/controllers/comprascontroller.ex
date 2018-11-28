defmodule Comprascontroller do

  @moduledoc"""
    Controlador para las funciones para las compras.
  """


  @doc"""
    La función `comprarproducto` realizara la compra del producto.
    El parametro `tienda` sera la tienda al a cual pertenece el producto.
    El parametro `producto` sera el nombre del producto.
    El parametro `cantidad` sera la cantidad del producto a comprar.

    Ejemplo:
    iex>Comprascontroller.comprarproducto("Tienda1", "Producto1", 10)
  """

  def comprarproducto(tienda, producto, cantidad) do
    product = Productocontroller.verificarproducto(tienda, producto)

    if product do
      if actualizarproducto(cantidad, product) do
          registrarcompra(product, cantidad)
      end
    else
      "No se encuentra este producto en el inventario"
    end
  end

  @doc"""
    La función `actualizarproducto` modificara la cantidad de productos en la tienda.
    El parametro `cantidad` sera la cantidad del producto a comprar.
    El parametro `product` recibe un mapa del producto.

  """

  def actualizarproducto(cantidad, product) do
    if (cantidad <= product.cantidad) do
      if ( is_integer(cantidad) and cantidad > 0) do
        changeset = Productos.changeset(product, %{cantidad: (product.cantidad-cantidad)})
        Tiendasonline.Repo.update(changeset)
      else
        IO.puts "Por favor ingrese una cantidad valida"
        :false
      end
    else
      IO.puts "No hay tantos producto para venderle, pruebe con una cantidad menor"
      :false
    end
  end


  @doc"""
    La función `registrarcompra` registrara la compra en la base de datos.
    El parametro `product` recibe un mapa del producto.
    El parametro `cantidad` sera la cantidad del producto a comprar.
  """

  def registrarcompra(product, cantidad) do
    compra = %Compras{}
    changeset = Compras.changeset(compra, %{tienda: product.tienda, producto: product.producto, precio_unitario: product.precio, cantidad: cantidad, ingreso: (cantidad*product.precio)})
    Tiendasonline.Repo.insert(changeset)
  end
end
