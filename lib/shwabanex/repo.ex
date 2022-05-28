defmodule Shwabanex.Repo do
  use Ecto.Repo,
    otp_app: :shwabanex,
    adapter: Ecto.Adapters.Postgres
end
