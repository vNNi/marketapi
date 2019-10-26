# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :marketapi,
  ecto_repos: [Marketapi.Repo]

# Configures the endpoint
config :marketapi, MarketapiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VX6/LLUcUda+dTgNB5X+b2/QCa0tuuBI5HhcB9/E5P2jZIoqdNW1CIG0Cmq2DG6y",
  render_errors: [view: MarketapiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Marketapi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
