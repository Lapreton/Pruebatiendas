defmodule Tiendasonline.Repo.Migrations.CrearTiendas do
  use Ecto.Migration

  def change do
    create table(:tiendas) do
     add :nombre, :string
    end
  end
end
