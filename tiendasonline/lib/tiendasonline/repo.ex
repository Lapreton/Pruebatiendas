defmodule Tiendasonline.Repo do
  use Ecto.Repo,
    otp_app: :tiendasonline,
    adapter: Ecto.Adapters.MySQL
end
