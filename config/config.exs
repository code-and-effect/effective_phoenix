# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :effective_phoenix,
  ecto_repos: [EffectivePhoenix.Repo]

# Configures the endpoint
config :effective_phoenix, EffectivePhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bSL+VEtqtV0XpT/t8gOiDoubiAbCfVXXuqgG7HVu0wLPG8bNdcAjnsm15hSRrD++",
  render_errors: [view: EffectivePhoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EffectivePhoenix.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
