defmodule Tiendas do
  use Ecto.Schema
  import Ecto.Changeset

  @moduledoc"""
  Esquema para la tabla de `tiendas`.

      field :nombre, :string
  """
  schema "tiendas" do
    field :nombre, :string
  end


  def changeset(tienda, params \\ %{}) do
    tienda
    |> cast(params, [:nombre])
    |> validate_required([:nombre])
  end
end
