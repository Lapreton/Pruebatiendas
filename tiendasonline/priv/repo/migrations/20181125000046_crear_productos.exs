defmodule Tiendasonline.Repo.Migrations.CrearProductos do
  use Ecto.Migration

  def change do
    create table(:productos) do
     add :tienda, :string
     add :producto, :string
     add :precio, :integer
     add :cantidad, :integer
    end
  end
end
