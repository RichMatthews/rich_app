defmodule RichApp.Repo do
  use Ecto.Repo,
    otp_app: :rich_app,
    adapter: Ecto.Adapters.Postgres
end
