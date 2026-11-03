defmodule Competition do
  use Application

  def start(_type, _args) do
    children = [
      {Bandit, plug: Competition.Router, scheme: :http, port: 4000}
    ]
    opts = [strategy: :one_for_one, name: Competition.Supervisor]

    Supervisor.start_link(children, opts)
  end
end
