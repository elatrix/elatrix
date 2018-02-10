# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elatrix, ecto_repos: []

# Configures the endpoint
config :elatrix, ElatrixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5K1gBsxPqcH5c8GWVrrtuNUAAwyUbRy7iINEQoJT+g7V8qYTBFv7Y8a6SP7i1wzF",
  render_errors: [view: ElatrixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Elatrix.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
