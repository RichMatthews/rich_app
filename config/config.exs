import Config

config :rich_app, RichApp.Repo,
  database: "countries",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :rich_app, ecto_repos: [RichApp.Repo]
