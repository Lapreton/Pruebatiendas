use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :tiendasonline, TiendasonlineWeb.Endpoint,
  secret_key_base: "E5dra/+87lDglg2FC0CzU2StakXxDo8JjOEk0kq8hwOI3BG73a3LxH3ckz1Xaf5O"

# Configure your database
config :tiendasonline, Tiendasonline.Repo,
  username: "root",
  password: "",
  database: "tiendasonline_prod",
  pool_size: 15
