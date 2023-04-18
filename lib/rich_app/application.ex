defmodule RichApp.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      RichApp.Repo
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: RichApp.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
