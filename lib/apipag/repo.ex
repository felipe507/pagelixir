defmodule Apipag.Repo do
  use Ecto.Repo,
    otp_app: :apipag,
    adapter: Ecto.Adapters.Postgres
end
