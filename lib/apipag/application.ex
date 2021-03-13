defmodule Apipag.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Apipag.Repo,
      # Start the Telemetry supervisor
      ApipagWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Apipag.PubSub},
      # Start the Endpoint (http/https)
      ApipagWeb.Endpoint
      # Start a worker by calling: Apipag.Worker.start_link(arg)
      # {Apipag.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Apipag.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ApipagWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
