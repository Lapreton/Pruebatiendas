defmodule Productos do
  use Ecto.Schema
  import Ecto.Changeset

  @moduledoc"""
  Esquema para la tabla de `productos`.



      field :tienda, :string
      field :producto, :string
      field :precio, :integer
      field :cantidad, :integer
    
  """

  schema "productos" do
    field :tienda, :string
    field :producto, :string
    field :precio, :integer
    field :cantidad, :integer
  end

  def changeset(producto, params \\ %{}) do
    producto
    |> cast(params, [:tienda, :producto, :precio, :cantidad])
    |> validate_required([:tienda, :producto, :precio, :cantidad])
  end
end
