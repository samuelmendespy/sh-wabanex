# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :shwabanex,
  ecto_repos: [Shwabanex.Repo]

# Configures the endpoint
config :shwabanex, ShwabanexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gsU9zXu52o525cNrWgi4SqLrDPnqSVSpECO9cs712KrsOSrKBGyS14enM4WXEUol",
  render_errors: [view: ShwabanexWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Shwabanex.PubSub,
  live_view: [signing_salt: "Rz3KCp2w"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
