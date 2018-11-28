defmodule Tiendasonline.Repo.Migrations.RegistrarCompras do
  use Ecto.Migration

  def change do
  create table(:compras) do
   add :tienda, :string
   add :producto, :string
   add :precio_unitario, :integer
   add :cantidad, :integer
   add :ingreso, :integer
  end
  end
end
