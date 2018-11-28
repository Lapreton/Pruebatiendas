defmodule Productocontroller do


  @moduledoc"""
    Controlador para las funciones para productos.
  """


  @doc"""
    La función `registrarproducto` registrara un nuevo producto en la base de datos.
    El parametro `tienda` sera la tienda al a cual pertenece el producto.
    El parametro `producto` sera el nombre del producto.
    El parametro `precio` sera el precio del producto.
    El parametro `cantidad` sera la cantidad del producto a ingresar.


      Ejemplo:
      iex>Productocontroller.registrarproducto("Tienda1", "Producto1", 1000, 10)
  """

  def registrarproducto(tienda, producto, precio, cantidad) do

    producto1 = %Productos{}
    product = Productocontroller.verificarproducto(tienda, producto)

    cond do

      product ->

        changeset = Productos.changeset(product, %{precio: precio, cantidad: (cantidad+product.cantidad)})
        Tiendasonline.Repo.update(changeset)

      Tiendacontroller.verificartienda(tienda) ->

        changeset = Productos.changeset(producto1, %{tienda: tienda, producto: producto, precio: precio, cantidad: cantidad})
        Tiendasonline.Repo.insert(changeset)

    true ->
        "No se puede agregar un producto a una tienda inexistente"
    end
  end



  @doc"""
    La función `verificarproducto` consultara si el producto se encuentra  en la base de datos.
    El parametro `tienda` sera la tienda al a cual pertenece el producto.
    El parametro `producto` sera el nombre del producto.
  """

  def verificarproducto(tienda, producto) do
      require Ecto.Query
      Productos |> Tiendasonline.Repo.get_by(tienda: tienda, producto: producto)
  end



  @doc"""
    La función `borrarproducto` borrara el producto de la base de datos.
    El parametro `tienda` sera la tienda al a cual pertenece el producto.
    El parametro `producto` sera el nombre del producto.

    Ejemplo:
    iex>Productocontroller.borrarproducto("Tienda1", "Producto1")
  """
  def borrarproducto(tienda, producto) do

      producto = Productocontroller.verificarproducto(tienda, producto)
      if producto do
        Tiendasonline.Repo.delete(producto)
      else
          "El producto ingresado no se encuentra en la base de datos"
      end
  end
end
