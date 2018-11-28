defmodule Controller do

  @moduledoc"""
    Controlador para las funciones de las vistas.
  """



  @doc"""
    La función `listartiendas` mostrara todas las tiendas registradas en a base de datos.
  """

  def listartiendas do
      require Ecto.Query
      Tiendas |> Tiendasonline.Repo.all()
  end



  @doc"""
    La función `listarproductos` mostrara todos los productos de una tienda registradas en a base de datos.
    El parametro `tienda` sera la tienda al a cual pertenece el producto.
  """

  def listarproductos (tienda) do
      require Ecto.Query
      Tiendasonline.Repo.all(Productos |> Ecto.Query.where(tienda: ^tienda))
  end
end
