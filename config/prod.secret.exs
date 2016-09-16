use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :qpay, Qpay.Endpoint,
  secret_key_base: "+8sVgXBQLnjP6c3xMljowHVYTjggpbLv3prN/gYWkqci3xV6+fdcfv6W0VMopF7+"

# Configure your database
config :qpay, Qpay.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "qpay_prod",
  pool_size: 20
