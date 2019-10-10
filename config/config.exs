# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :coello,
  ecto_repos: [Coello.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :coello, CoelloWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pybCk+eLU3O80NcC06FS/p6nwmjYWIMxlnswLGpDv2xoF4PP6H7yPC0ycEym2Ywb",
  pubsub: [name: Coello.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configures Guardian
config :coello, Coello.Guardian,
  issuer: "coello",
  secret_key: "kRjqFv0zYDAQXWBmDcZncsgQ+WUHfqQzl7d7JQ7L8hyLu7ZrhrTC5LahEbMftzaz"

  # Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
