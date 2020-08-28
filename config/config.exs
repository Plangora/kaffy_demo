# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :kaffy_demo,
  ecto_repos: [KaffyDemo.Repo]

# Configures the endpoint
config :kaffy_demo, KaffyDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2m/zG8r/a5UKYjeNQNHlqcANLFsonwqcLSqi/+HhySXu34uaMfFYCZNMbsgYZPt0",
  render_errors: [view: KaffyDemoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: KaffyDemo.PubSub,
  live_view: [signing_salt: "pqEYFodN"]

config :kaffy,
  otp_app: :kaffy_demo,
  ecto_repo: KaffyDemo.Repo,
  router: KaffyDemoWeb.Router,
  resources: [
    blog: [resources: [post: [schema: KaffyDemo.Blog.Post, admin: KaffyDemoWeb.Kaffy.PostAdmin]]]
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
