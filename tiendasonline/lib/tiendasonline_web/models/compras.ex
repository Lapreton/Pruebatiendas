defmodule Compras do
  use Ecto.Schema
  import Ecto.Changeset

  @moduledoc"""
  Esquema para la tabla de `compras`.



      field :tienda, :string
      field :producto, :string
      field :precio_unitario, :integer
      field :cantidad, :integer
      field :ingreso, :integer
    
  """

  schema "compras" do
    field :tienda, :string
    field :producto, :string
    field :precio_unitario, :integer
    field :cantidad, :integer
    field :ingreso, :integer
  end

  def changeset(producto, params \\ %{}) do
    producto
    |> cast(params, [:tienda, :producto, :precio_unitario, :cantidad, :ingreso])
    |> validate_required([:tienda, :producto, :precio_unitario, :cantidad, :ingreso])
  end
end
