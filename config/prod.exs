use Mix.Config

config :peepchat, Peepchat.Endpoint,
  http: [port: {:system, "PORT"}],
  secret_key_base: System.get_env("SECRET_KEY_BASE"),
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  url: [host: "arcane-temple-31463.herokuapp.com", port: 443]


config :peepchat, Peepchat.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: 20

config :logger, level: :info

import_config "prod.secret.exs"
