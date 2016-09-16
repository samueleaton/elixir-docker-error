# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :qpay,
  ecto_repos: [Qpay.Repo]

# Configures the endpoint
config :qpay, Qpay.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3hHSEkaIVHs1GQ6dSdKR5cDzEGTvsSf6GrNNZ5Ir/aK1sRR5H7Fufb6CqsHmNdZP",
  render_errors: [view: Qpay.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Qpay.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
