defmodule Tiendacontroller do

  @moduledoc"""
    Controlador para las funciones para tiendas.
  """

  @doc"""
    La función `registrartienda` registrara una nueva tienda en la base de datos.
    El parametro `nombre` recibira el nombre de la tienda a ingresar.

    Ejemplo:
    iex>Tiendacontroller.registrartienda("Tienda1")
  """
  def registrartienda(nombre) do

    if Tiendacontroller.verificartienda(nombre) do
      "Ya se encuentra registrado"
    else
      tienda1 = %Tiendas{}
      changeset = Tiendas.changeset(tienda1, %{nombre: nombre})
      Tiendasonline.Repo.insert(changeset)
    end
  end

  @doc"""
    La función `verificartienda` consultara en la base de datos si la tienda se encuentra registrada.
    El parametro `nombre` recibira el nombre de la tienda a consultar.
  """
  def verificartienda(nombre) do
      require Ecto.Query
      Tiendas |> Tiendasonline.Repo.get_by(nombre: nombre)
  end


  @doc"""
    La función `borrartienda` borrara la tienda en la base de datos.
    El parametro `nombre` recibira el nombre de la tienda a borrar.

    Ejemplo:
    iex>Tiendacontroller.borrartienda("Tienda1")
  """
  def borrartienda(nombre) do

      tienda = Tiendacontroller.verificartienda(nombre)
      if tienda do
        Tiendasonline.Repo.delete(tienda)
        Tiendacontroller.borrarproductos(nombre)
      else
          "La tienda ingresada no se encuentra en la base de datos"
      end
  end

  @doc"""
    La función `borrarproductos` borrara todos los productos de una tienda.
    El parametro `tienda` recibira la tienda la cual se le borraran los productos.
  """

  def borrarproductos(tienda) do
      require Ecto.Query
      Tiendasonline.Repo.delete_all(Productos |> Ecto.Query.where(tienda: ^tienda))
  end
end
